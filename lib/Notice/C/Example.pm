package Notice::C::Example;
use Mojo::Base 'Mojolicious::Controller';

=head1 NAME

Notice::C::Example

=head1 SYNOPSIS

This example shows that the "actions" (sub-routines) in a controller
do not have to be 'main' or 'index.

=head1 DESCRIPTION

An example Controller for mojo-Notice

=head3 welcome

The example action

=cut

# This action will render a template
sub welcome {
  my $self = shift;
  my $user = $self->session('user');
  my $message = 'Welcome to Notice, (using the Mojolicious real-time web framework!)';
  $message=~s/Welcome/Welcome $user/ if $user;

  # Render template "example/welcome.html.ep" with message
  $self->render(
    message => $message,
   );
}

1;

__END__

=head1 BUGS AND LIMITATIONS

Probably, and certainly better ways to do the same thing

=head1 SEE ALSO

L<Notice>, L<mojolicious>

=head1 AUTHOR

Alexx Roche, C<< notice-dev@alexx.net >>

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2011 Alexx Roche

This program is free software; you can redistribute it and/or modify it
under the following license: Eclipse Public License, Version 1.0 ; 
or the Artistic License.

See http://www.opensource.org/licenses/ for more information.

=cut

