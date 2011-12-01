package Notice::C::Login;
use Mojo::Base 'Mojolicious::Controller';

use Notice::Auth;

=head3 main

The main action

=cut

sub main {
  my $self = shift;

  my $user = $self->param('user') || '';
  my $pass = $self->param('pass') || '';
  if($self->session('user') ne ''){
    my $destination = $self->param('destination');
    my ($rm,$action,@rest)= split('/', $destination);
    my $ip   = $self->req->env->{'REMOTE_ADDR'} || 'localhost';
    my $title = 'Notice CRaAM ' . $rm . ' - "' . $user .'" AT '. $ip;
    return $self->render(controller => $rm, action => $action, user => $user, body => 'logged in', title => $title);
  }
  # If we do not know this user
  return $self->render unless $self->users->check($user, $pass);

  $self->session(user => $user);
  #$self->flash(message => 'You are now logging in.');
  $self->stash(message => 'You are now logging in.');
  my $redirect = $self->param('redirect');
  #$self->render(body => 'This is an MVC example of Mojolicious with I18N (internationalisation). <br />', controller => 'main', action => 'main');

  #$rm = $self->req->url->path() || $self->url_for('current') || $self->param('rm') || 'Main';
  #my $ip   = $self->req->env->{'REMOTE_ADDR'} || 'localhost';
  #my $title = 'Notice CRaAM ' . $rm . ' - ' . $user .' AT '. $ip;

  $self->render(controller => 'main', action => 'main');

}

=head3 protected

Not sure that I really need this, but as this is an example I have left it in

=cut

sub protected {
  my $self = shift;
  my $destination = $self->param('destination') || 'main';
  #NTS protect against XSS
  return $self->redirect_to('welcome') unless $self->session('user');
  $self->redirect_to($destination);
}

=head3 logout

This clears the session and send them back to the spash page

=cut

sub logout {
  my $self = shift;
  $self->session(expires => 1);
  $self->redirect_to('welcome');
}

1;

