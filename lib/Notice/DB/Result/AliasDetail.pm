package Notice::DB::Result::AliasDetail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::AliasDetail

=cut

__PACKAGE__->table("alias_details");

=head1 ACCESSORS

=head2 ead_userid

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ead_doid

  data_type: 'integer'
  is_nullable: 1

=head2 ead_website

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ead_password

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ead_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 ead_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ead_userid",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ead_doid",
  { data_type => "integer", is_nullable => 1 },
  "ead_website",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ead_password",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ead_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "ead_notes",
  { data_type => "blob", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Hm69v7foDQF0mSbvXITLmg
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/AliasDetail.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::AliasDetail;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::AliasDetail

=cut

__PACKAGE__->table("alias_details");

=head1 ACCESSORS

=head2 ead_userid

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ead_doid

  data_type: 'integer'
  is_nullable: 1

=head2 ead_website

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ead_password

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ead_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 ead_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ead_userid",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ead_doid",
  { data_type => "integer", is_nullable => 1 },
  "ead_website",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ead_password",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ead_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "ead_notes",
  { data_type => "blob", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lDMXNhaAWypvCRQU0gxNMg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/AliasDetail.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
