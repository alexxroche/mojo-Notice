package Notice::DB::Result::Pgpfriend;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Pgpfriend

=cut

__PACKAGE__->table("PGPfriends");

=head1 ACCESSORS

=head2 pf_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 pf_peid

  data_type: 'integer'
  is_nullable: 0

=head2 pf_state

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1,2,3,4]}
  is_nullable: 1

=head2 pf_fan

  data_type: 'integer'
  is_nullable: 0

=head2 pf_date_added

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pf_date_changed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "pf_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "pf_peid",
  { data_type => "integer", is_nullable => 0 },
  "pf_state",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0 .. 4] },
    is_nullable => 1,
  },
  "pf_fan",
  { data_type => "integer", is_nullable => 0 },
  "pf_date_added",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pf_date_changed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("pf_peid", "pf_fan");
__PACKAGE__->add_unique_constraint("pf_id", ["pf_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1qWZ1SezBCUkfHvPaNtx5Q
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Pgpfriend.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Pgpfriend;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Pgpfriend

=cut

__PACKAGE__->table("PGPfriends");

=head1 ACCESSORS

=head2 pf_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 pf_peid

  data_type: 'integer'
  is_nullable: 0

=head2 pf_state

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1,2,3,4]}
  is_nullable: 1

=head2 pf_fan

  data_type: 'integer'
  is_nullable: 0

=head2 pf_date_added

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pf_date_changed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "pf_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "pf_peid",
  { data_type => "integer", is_nullable => 0 },
  "pf_state",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0 .. 4] },
    is_nullable => 1,
  },
  "pf_fan",
  { data_type => "integer", is_nullable => 0 },
  "pf_date_added",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pf_date_changed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("pf_peid", "pf_fan");
__PACKAGE__->add_unique_constraint("pf_id", ["pf_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:w+XANvK9hImskn/qBEJYKw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Pgpfriend.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
