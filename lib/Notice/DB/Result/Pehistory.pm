package Notice::DB::Result::Pehistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Pehistory

=cut

__PACKAGE__->table("pehistory");

=head1 ACCESSORS

=head2 ph_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 ph_peid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ph_what

  data_type: 'mediumtext'
  is_nullable: 1

=head2 ph_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 ph_bywhom

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ph_towhat

  data_type: 'varchar'
  is_nullable: 1
  size: 512

=cut

__PACKAGE__->add_columns(
  "ph_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "ph_peid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ph_what",
  { data_type => "mediumtext", is_nullable => 1 },
  "ph_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "ph_bywhom",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ph_towhat",
  { data_type => "varchar", is_nullable => 1, size => 512 },
);
__PACKAGE__->set_primary_key("ph_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XP3RQt4uszea0NmNDhlDDw
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Pehistory.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Pehistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Pehistory

=cut

__PACKAGE__->table("pehistory");

=head1 ACCESSORS

=head2 ph_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 ph_peid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ph_what

  data_type: 'mediumtext'
  is_nullable: 1

=head2 ph_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 ph_bywhom

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ph_towhat

  data_type: 'varchar'
  is_nullable: 1
  size: 512

=cut

__PACKAGE__->add_columns(
  "ph_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "ph_peid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ph_what",
  { data_type => "mediumtext", is_nullable => 1 },
  "ph_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "ph_bywhom",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ph_towhat",
  { data_type => "varchar", is_nullable => 1, size => 512 },
);
__PACKAGE__->set_primary_key("ph_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ASlZzUyUFfBxA2I1wudE1Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Pehistory.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
