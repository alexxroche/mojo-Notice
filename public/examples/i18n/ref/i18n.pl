package Mojolicious::Plugin::I18nAll;

use strict;
use warnings;

use base 'Mojolicious::Plugin';

use I18N::LangTags;

# Core module since Perl 5.8.5
use constant DETECT => eval { require I18N::LangTags::Detect; 1 };

# Can we have Bender burgers again?
# No, the cat shelter’s onto me.
sub register {
    my ($self, $app, $conf) = @_;

    # Config
    $conf ||= {};

    # Namespace
    my $namespace = $conf->{namespace} || ((ref $app) . "::I18N");
my $default = $conf->{default } || 'en';

    # Initialize
    eval "package $namespace; use base 'Locale::Maketext'; 1;";
    die qq/Couldn't initialize I18N class "$namespace": $@/ if $@;

    # Start timer
    $app->plugins->add_hook(
        before_dispatch => sub {
            my ($self, $c) = @_;

            # Languages
            my @languages = ( $default );

            # Header detection
            @languages = I18N::LangTags::implicate_supers(
                I18N::LangTags::Detect->http_accept_langs(
                    scalar $c->req->headers->accept_language
                )
            ) if DETECT;
            
# Cookie detection
if (my @cookies = grep { $_->name eq 'language' } @{$c->req->cookies}) {
@languages = map { $_->value } @cookies;
}
            
            # Handler
            $c->stash->{i18n} =
              Mojolicious::Plugin::I18n::_Handler->new(
                _namespace => $namespace, _default => $default);

            # Languages
            $c->stash->{i18n}->languages(@languages);
        }
    );

# vti code
$app->plugins->add_hook(
after_static_dispatch => sub {
my ($self, $c) = @_;

# We don't want to parse static files urls
return if $c->res->code;

if (my $path = $c->tx->req->url->path and $conf->{languages}) {
my $part = $path->parts->[0];

if ($part && grep { $part eq $_ } @{$conf->{languages} || []}) {
shift @{$path->parts};

$c->app->log->debug("Found language $part in url");

$c->stash->{i18n}->languages($part);
$c->stash->{i18n}->{_url_detected}++;
}
}
}
);

    # Add "languages" helper
    $app->renderer->add_helper(
        languages => sub { shift->stash->{i18n}->languages(@_) });

    # Add "l" helper
    $app->renderer->add_helper(l => sub { shift->stash->{i18n}->localize(@_) }
    );

# Redefine "url_for" helper
$app->renderer->add_helper(url_for => sub {
my $self = shift;
my $url = $self->url_for(@_);

if ($self->stash->{i18n}->{_url_detected}) {
my $language = $self->stash->{i18n}->languages;
unshift @{$url->path->parts}, $language;
}

return $url;
});
}

# Container
package Mojolicious::Plugin::I18n::_Handler;

use base 'Mojo::Base';

__PACKAGE__->attr([qw/_handle _language _namespace _default/]);

sub languages {
    my ($self, @languages) = @_;

    # Shortcut
    return $self->_language unless @languages;

    # Namespace
    my $namespace = $self->_namespace;

    # Handle
    if (my $handle = $namespace->get_handle(@languages)) {
        $self->_handle($handle);
        $self->_language($handle->language_tag);
    }
    else { $self->_language( $self->_default ) }

    return $self;
}

sub localize {
    my $self = shift;

    # Localize
if (my $handle = $self->_handle) {
my $result = eval { $handle->maketext(@_) };
return $result if defined $result;

# if prev maketext was fail
my $handle_default = $self->_namespace->get_handle( $self->_default );
return $handle_default->maketext(@_) if $handle_default;
}

    # Pass through
    return join '', @_;
}

1;
__END__

=head1 NAME

Mojolicious::Plugin::I18n - Intenationalization Plugin

=head1 SYNOPSIS

# Mojolicious
$self->plugin('i18n');
% languages 'de';
<%=l 'hello' %>

# Mojolicious::Lite
plugin 'i18n' => {namespace => 'MyApp::I18N', default => 'ru', languages => ['en', 'ru', 'de']};
<%=l 'hello' %>

# Lexicon
package MyApp::I18N::de;
use base 'MyApp::I18N';

our %Lexicon = (hello => 'hallo');

1;

=head1 DESCRIPTION

L<Mojolicous::Plugin::I18n> adds L<Locale::Maketext> support to
L<Mojolicious>.

=head1 METHODS

L<Mojolicious::Plugin::I18n> inherits all methods from L<Mojolicious::Plugin>
and implements the following new ones.

=head2 C<register>

$plugin->register;

Register plugin hooks and helpers in L<Mojolicious> application.

=head1 SEE ALSO

L<Mojolicious>, L<Mojolicious::Guides>, L<http://mojolicious.org>.

=cut


