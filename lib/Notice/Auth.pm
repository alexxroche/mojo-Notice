package Notice::Auth;

use strict;
use warnings;

our $VERSION = 0.01;

=head1 NAME

Notice::Auth - Used to authenticate users

=head1 SYNOPSIS

See DESCRIPTION
    
=head1 DESCRIPTION

See SYNOPSIS, no no no

A controller module for mojo-Notice.

=head3 NTS

Notes To Self - things to do later

=head3 NOTES

Things for other people to do later

=head1 METHODS

=cut


# NTS Pull this from the database
# NTS use DBIx::Class to connect to said database
my $USERS = {
  'alexx@alexx.net'  => 'lx',
  alexx  => 'lx',
  test  => 'not very secure',
};

=head3 new

Guess what this does

=cut

sub new { bless {}, shift }

=head3 check

This checks to see if the user has entered the right password

=cut

sub check {
  my ($self, $user, $pass) = @_;

  # Success
  return 1 if $USERS->{$user} && $USERS->{$user} eq $pass;

  # Fail
  return;
}

=head3 authed

This checks to see if this user still exists

=cut

sub authed {
    my ($self, $user, $rm) = @_;
    # Success
    return 1 if $USERS->{$user};
    # Fail
    return;
}

1;

__END__

=head1 BUGS AND LIMITATIONS

Probably, and certainly better ways to do the same thing

Please report any bugs or feature requests to
C<bug-mojo-notice at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=mojo-notice>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SEE ALSO

L<Mojolicious>, L<DBIx::Class>, L<Notice>

=head1 AUTHOR

Alexx Roche, C<< <notice-dev@alexx.net> >>

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2011 Alexx Roche

This program is free software; you can redistribute it and/or modify it
under the following license: Eclipse Public License, Version 1.0 ; 
or the Artistic License.

See http://www.opensource.org/licenses/ for more information.

=cut


