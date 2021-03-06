package Notice::DB::Result::People;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::People

=cut

__PACKAGE__->table("people");

=head1 ACCESSORS

=head2 pe_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 pe_raid

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 pe_fname

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_lname

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_mname

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_uname

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_alias

  data_type: 'integer'
  is_nullable: 1

=head2 pe_goesby

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_dob

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pe_dod

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pe_mobile

  data_type: 'tinytext'
  is_nullable: 1

=head2 pe_email

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 pe_password

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_acid

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pe_level

  data_type: 'integer'
  is_nullable: 1

=head2 pe_loggedin

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 pe_menu

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 512

=head2 pe_confirmed

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 pe_passwd

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=cut

__PACKAGE__->add_columns(
  "pe_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "pe_raid",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "pe_fname",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_lname",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_mname",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_uname",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_alias",
  { data_type => "integer", is_nullable => 1 },
  "pe_goesby",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_dob",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pe_dod",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pe_mobile",
  { data_type => "tinytext", is_nullable => 1 },
  "pe_email",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "pe_password",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_acid",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pe_level",
  { data_type => "integer", is_nullable => 1 },
  "pe_loggedin",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "pe_menu",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 512 },
  "pe_confirmed",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "pe_passwd",
  { data_type => "varchar", is_nullable => 1, size => 256 },
);
__PACKAGE__->set_primary_key("pe_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:90yhxRsOtZkecFXjMaKZ8g
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/People.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::People;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::People

=cut

__PACKAGE__->table("people");

=head1 ACCESSORS

=head2 pe_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 pe_raid

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 pe_fname

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_lname

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_mname

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_uname

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_alias

  data_type: 'integer'
  is_nullable: 1

=head2 pe_goesby

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_dob

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pe_dod

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pe_mobile

  data_type: 'tinytext'
  is_nullable: 1

=head2 pe_email

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 pe_password

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pe_acid

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pe_level

  data_type: 'integer'
  is_nullable: 1

=head2 pe_loggedin

  data_type: 'varchar'
  is_nullable: 1
  size: 90

=head2 pe_menu

  data_type: 'varchar'
  default_value: 1
  is_nullable: 1
  size: 512

=head2 pe_confirmed

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 pe_passwd

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=cut

__PACKAGE__->add_columns(
  "pe_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "pe_raid",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "pe_fname",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_lname",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_mname",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_uname",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_alias",
  { data_type => "integer", is_nullable => 1 },
  "pe_goesby",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_dob",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pe_dod",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pe_mobile",
  { data_type => "tinytext", is_nullable => 1 },
  "pe_email",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "pe_password",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pe_acid",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pe_level",
  { data_type => "integer", is_nullable => 1 },
  "pe_loggedin",
  { data_type => "varchar", is_nullable => 1, size => 90 },
  "pe_menu",
  { data_type => "varchar", default_value => 1, is_nullable => 1, size => 512 },
  "pe_confirmed",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "pe_passwd",
  { data_type => "varchar", is_nullable => 1, size => 256 },
);
__PACKAGE__->set_primary_key("pe_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wXr4fG5W4ye2w8jBwvcmQg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/People.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
