package Notice::C::Main;
use Mojo::Base 'Mojolicious::Controller';

our $VERSION = '0.01';

# This action will render a template
sub main {
  my $self = shift;
  my $c = shift;
  #return $self->redirect_to('login', destination => 'mainline') unless $self->session('user') ne '';
  # Are they logged in?
  if ( $self->session('user') eq ''){
    $self->stash('destination' => 'mainline');
    return $self->redirect_to('login');
  }
  my $rm = $self->url_for('current') || 'Main';
  if(keys %{$c}){ $rm = $c->param('rm'); }
  else{ bless $c; $rm = $c->req->url->path(); }
  my $user = $self->session('user');
  my $ip   = $self->req->env->{'REMOTE_ADDR'} || 'localhost';
  my $title = 'Notice CRaAM ' . $rm . ' - "' . $user .'" AT '. $ip;

 # my $title = 'Notice CRaAM main - ' . $user .' AT '. $ip;

  # Render template "main/main.html.ep" with message
  $self->render(
    title   => $title,
    message => 'Welcome to Notice (v 0.1) using the Mojolicious real-time web framework',
    welcome => 'This is an MVC example of Mojolicious with I18N (internationalisation). <br />
 The "M" will be DBIx::Class, the "V" is Template::Toolkit, the "C" (and everything else) is Mojolicious.<br />
This is a mojo-port from my CGI::Application version of Notice');
}

1;
