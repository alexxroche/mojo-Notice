package Notice::DB::Result::Permission;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Permission

=cut

__PACKAGE__->table("permission");

=head1 ACCESSORS

=head2 mi_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 mi_peid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mi_asid

  data_type: 'integer'
  is_nullable: 1

=head2 mi_contactsystem

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 mi_startdata

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 mi_enddate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 mi_passphrase

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "mi_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "mi_peid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mi_asid",
  { data_type => "integer", is_nullable => 1 },
  "mi_contactsystem",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "mi_startdata",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "mi_enddate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "mi_passphrase",
  { data_type => "blob", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("mi_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SMtlICi4Di3ZsW+O45STMw
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Permission.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Permission;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Permission

=cut

__PACKAGE__->table("permission");

=head1 ACCESSORS

=head2 mi_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 mi_peid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 mi_asid

  data_type: 'integer'
  is_nullable: 1

=head2 mi_contactsystem

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 mi_startdata

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 mi_enddate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 mi_passphrase

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "mi_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "mi_peid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "mi_asid",
  { data_type => "integer", is_nullable => 1 },
  "mi_contactsystem",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "mi_startdata",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "mi_enddate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "mi_passphrase",
  { data_type => "blob", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("mi_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OrKSiX4ke/44qOTUYnb7vQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Permission.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
