package Notice::C::Public;
use Mojo::Base 'Mojolicious::Controller';

our $VERSION = '0.01';

=head3 main

The Main action 

=cut

# This action will render a template
sub main {
  my $self = shift;
  my $user = $self->session('user');
  my $ip   = $self->req->env->{'REMOTE_ADDR'} || 'localhost';
  my $rm = $self->param('rm') || 'Main';
  my $title = 'Notice CRaAM ' . $rm . ' - ' . $user .' AT '. $ip;
  my $message = 'What?';
  my $welcome = 'What?';


  # Render template "main/main.html.ep" with message
  $self->render(
    template => 'main',
    title   => $title,
    message => 'Here we display the users of Notice',
    welcome => 'Here you can add and remove users, (if you have the right permissions)',
	);
}

1;
