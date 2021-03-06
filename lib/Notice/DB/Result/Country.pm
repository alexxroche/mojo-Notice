package Notice::DB::Result::Country;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Country

=cut

__PACKAGE__->table("country");

=head1 ACCESSORS

=head2 iso

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 printable_name

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 iso3

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 numcode

  data_type: 'smallint'
  is_nullable: 1

=head2 curid

  data_type: 'integer'
  is_nullable: 1

=head2 flag

  data_type: 'blob'
  is_nullable: 1

=head2 sigup

  data_type: 'tinyint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "iso",
  { data_type => "char", is_nullable => 0, size => 2 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "printable_name",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "iso3",
  { data_type => "char", is_nullable => 1, size => 3 },
  "numcode",
  { data_type => "smallint", is_nullable => 1 },
  "curid",
  { data_type => "integer", is_nullable => 1 },
  "flag",
  { data_type => "blob", is_nullable => 1 },
  "sigup",
  { data_type => "tinyint", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("iso");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:66ZWuQlRkHbnj7auGPaKkA
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Country.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Country;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Country

=cut

__PACKAGE__->table("country");

=head1 ACCESSORS

=head2 iso

  data_type: 'char'
  is_nullable: 0
  size: 2

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 printable_name

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 iso3

  data_type: 'char'
  is_nullable: 1
  size: 3

=head2 numcode

  data_type: 'smallint'
  is_nullable: 1

=head2 curid

  data_type: 'integer'
  is_nullable: 1

=head2 flag

  data_type: 'blob'
  is_nullable: 1

=head2 sigup

  data_type: 'tinyint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "iso",
  { data_type => "char", is_nullable => 0, size => 2 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "printable_name",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "iso3",
  { data_type => "char", is_nullable => 1, size => 3 },
  "numcode",
  { data_type => "smallint", is_nullable => 1 },
  "curid",
  { data_type => "integer", is_nullable => 1 },
  "flag",
  { data_type => "blob", is_nullable => 1 },
  "sigup",
  { data_type => "tinyint", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("iso");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7gitWJXuPQjX7aW0VUX9fQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Country.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
