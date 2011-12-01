package Notice::DB::Result::GroupMember;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::GroupMember

=cut

__PACKAGE__->table("group_members");

=head1 ACCESSORS

=head2 gg_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 gg_peid

  data_type: 'integer'
  is_nullable: 0

=head2 gg_grid

  data_type: 'integer'
  is_nullable: 0

=head2 gg_miag

  data_type: 'integer'
  is_nullable: 0

=head2 gg_state

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1,2,3,4]}
  is_nullable: 1

=head2 gg_date_added

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 gg_date_changed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "gg_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "gg_peid",
  { data_type => "integer", is_nullable => 0 },
  "gg_grid",
  { data_type => "integer", is_nullable => 0 },
  "gg_miag",
  { data_type => "integer", is_nullable => 0 },
  "gg_state",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0 .. 4] },
    is_nullable => 1,
  },
  "gg_date_added",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "gg_date_changed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("gg_peid", "gg_grid", "gg_miag");
__PACKAGE__->add_unique_constraint("gg_id", ["gg_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9gRi04NMxJSgmTVMyAnIRA
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/GroupMember.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::GroupMember;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::GroupMember

=cut

__PACKAGE__->table("group_members");

=head1 ACCESSORS

=head2 gg_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 gg_peid

  data_type: 'integer'
  is_nullable: 0

=head2 gg_grid

  data_type: 'integer'
  is_nullable: 0

=head2 gg_miag

  data_type: 'integer'
  is_nullable: 0

=head2 gg_state

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1,2,3,4]}
  is_nullable: 1

=head2 gg_date_added

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 gg_date_changed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "gg_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "gg_peid",
  { data_type => "integer", is_nullable => 0 },
  "gg_grid",
  { data_type => "integer", is_nullable => 0 },
  "gg_miag",
  { data_type => "integer", is_nullable => 0 },
  "gg_state",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0 .. 4] },
    is_nullable => 1,
  },
  "gg_date_added",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "gg_date_changed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("gg_peid", "gg_grid", "gg_miag");
__PACKAGE__->add_unique_constraint("gg_id", ["gg_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7m0dCDuI0+h4jXnrN9UG1w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/GroupMember.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
