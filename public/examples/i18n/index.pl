#!/usr/bin/env perl
use strict;
use warnings;

my %opt;
$opt{D}=0;

use Mojolicious::Lite;
use Mojolicious::Plugin::TtRenderer;
use Mojolicious::Plugin::I18N;
app->secret('not');

plugin tt_renderer => {template_options => { INCLUDE_PATH => 'templates/', WRAPPER => 'wrapper.html.tt'}};
plugin I18N => {
	namespace => 'I18N',
	default => 'pt',	#this seems to just break the "default" lang sometimes
	#support_url_langs => [qw(en pt-br en_GB lx de fr ru)]
};
app->renderer->default_handler('tt');


under '/:lang' => [lang => qr/\w\w([_-]?\w\w)?/] => sub { my ($self) = @_; 

#use I18N::LangTags::Detect;
#$opt{ll} = I18N::LangTags::Detect::detect();
#$opt{debug} .= "Languages: $opt{ll}<br />";

any '' => (agent => qr/gb/i) => sub{ my ($self) = @_; $self->stash('debug' => 'Welcome Bond'); $self->languages('en-gb'); $self->render('index'); exit;};

# check to see if we are running in CGI
if (keys %{$self->req->env}){
	my $script_name = $self->req->env->{'SCRIPT_NAME'} . '/';
	$script_name=~s/^\///;
	$self->stash('site_path' => $script_name);
}

my $agent = $self->req->content->headers->{'headers'}->{'user-agent'}[0][0]; #what the?
my $url = $self->req->url;
my $uri  = $url->base->scheme . '://' . $url->base->host . ':' . $url->base->port . '/';
use Data::Dumper;
	$opt{debug} .= "url =$url <br /> ";
	$opt{debug} .= "agent = $agent <br />";
	$opt{debug} .= "uri = $uri <br />";
        $opt{debug} .= Dumper($self->req) if $opt{D}>=1;

$self->stash('debug' => $opt{debug});
$opt{debug}='';

$self->languages($self->param('lang')); $self->render('index'); };
get '' => sub { my ($self) = @_; $self->languages($self->param('lang')); $self->render('index'); };
get '*' => sub { my ($self) = @_; $self->languages($self->param('lang')); $self->render('index'); };

under '/' => sub { my ($self) = @_; 
	# check to see if we are running in CGI
if (keys %{$self->req->env}){
        my $script_name = $self->req->env->{'SCRIPT_NAME'} . '/';
        $script_name=~s/^\///;
        $self->stash('site_path' => $script_name);
}

	$self->languages('xx'); $self->render('index'); 
};
any '' => (agent => qr/gb/i) => sub{ my ($self) = @_; $self->stash('debug' => 'Welcome Bond'); $self->languages('en-gb'); $self->render('index'); exit;};
get ['','*'] => sub { my ($self) = @_; $self->languages('ru'); $self->render('index'); };
get '*' => sub { my ($self) = @_; $self->languages('ru'); $self->render('index'); };
any '' => (agent => qr/gb/i) => sub{ my ($self) = @_; $self->stash('debug' => 'Welcome Bond'); $self->languages('en-gb'); $self->render('index'); exit;};


# other examples that can be used (in various combinations
#get '/:lang' => [lang => qr/\w\w(_\w\w)?/] => sub { my ($self) = @_; $self->languages($self->param('lang')); $self->render('index'); };
#get '/de' => sub { my ($self) = @_; $self->languages('de'); $self->render('index'); };
#get '/lx' => sub { my ($self) = @_; $self->languages('lx'); $self->render('index'); };
#get '/fr' => sub { my ($self) = @_; $self->languages('fr'); $self->render('index'); };

app->start;
