package Notice::DB::Result::Whowhere;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Whowhere

=cut

__PACKAGE__->table("whowhere");

=head1 ACCESSORS

=head2 wh_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 wh_adid

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 wh_peid

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 wh_state

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "wh_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "wh_adid",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "wh_peid",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "wh_state",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);
__PACKAGE__->set_primary_key("wh_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zf4LQaBcRBa1NurMLv6laA
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Whowhere.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Whowhere;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Whowhere

=cut

__PACKAGE__->table("whowhere");

=head1 ACCESSORS

=head2 wh_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 wh_adid

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 wh_peid

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 wh_state

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "wh_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "wh_adid",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "wh_peid",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "wh_state",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);
__PACKAGE__->set_primary_key("wh_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:h91FrKel3AC/2XFMAExITQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Whowhere.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
