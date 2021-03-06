package Notice::DB::Result::Weblogin;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Weblogin

=cut

__PACKAGE__->table("weblogins");

=head1 ACCESSORS

=head2 site

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 username

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 74

=head2 userid

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 domain

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "site",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "username",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 74 },
  "userid",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "domain",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "notes",
  { data_type => "blob", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:r6sJaPqHZ18a4CUw9YsT1Q
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Weblogin.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Weblogin;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Weblogin

=cut

__PACKAGE__->table("weblogins");

=head1 ACCESSORS

=head2 site

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 username

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 74

=head2 userid

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 domain

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "site",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "username",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 74 },
  "userid",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "domain",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "notes",
  { data_type => "blob", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aZ0jOxoBljq6BNVIOv2PWA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Weblogin.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
