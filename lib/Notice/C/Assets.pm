package Notice::C::Assets;
use Mojo::Base 'Mojolicious::Controller';

our $VERSION = '0.01';
our %opt = ('D'=>1); #debug and other options

# This action will render a template
sub main {
  my $self = shift;
  #my $c = shift;
  $self->Notice::cgiapp_init();
  
  # Are they logged in? (why isn't this called from Notice::cgiapp_init ? )
  return $self->redirect_to('login', destination => __PACKAGE__) unless $self->users->authed($self->session('user'));

  #if ( $self->session('user') eq ''){
  #  $self->stash('destination' => 'mainstash'); #does not seem to work
  #  $self->session('destination' => 'assets');
  #  $self->param('destination' => 'mainline');
  #  return $self->redirect_to('login');
  #}

  $self->render(
    message => 'Welcome to Notice (v 0.1) using the Mojolicious real-time web framework',
    welcome => 'This is an MVC example of Mojolicious with I18N (internationalisation). <br />
 The "M" will be DBIx::Class, the "V" is Template::Toolkit, the "C" (and everything else) is Mojolicious.<br />
This is a mojo-port from my CGI::Application version of Notice');
}

sub list {
  my $self = shift;
  $self->Notice::cgiapp_init(); 
 # check_authentication($self);
  if ( $self->session('user') eq ''){
        $self->session('destination' => 'assets/list');
        return $self->redirect_to('login');
  }

  my $rm = $self->url_for('current') || 'Broken';
  #if(keys %{$self}){ $rm = $self->param('rm'); }else{ $rm = $self->req->url->path(); }
  my $user = $self->session('user');
  my $ip   = $self->req->env->{'REMOTE_ADDR'} || 'localhost';
  my $title = 'Notice CRaAM ' . $rm . ' - "' . $user .'" AT '. $ip;
  my $body = '';

  $self->render(
    #template => 'main',
    message => $self->url_for('current'),
    body => $body,
    );
  
}

1;
