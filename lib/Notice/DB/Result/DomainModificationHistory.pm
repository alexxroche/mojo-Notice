package Notice::DB::Result::DomainModificationHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::DomainModificationHistory

=cut

__PACKAGE__->table("domain_modification_history");

=head1 ACCESSORS

=head2 dmh_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 dmh_doid

  data_type: 'integer'
  is_nullable: 0

=head2 dmh_peid

  data_type: 'integer'
  is_nullable: 0

=head2 dmh_bulk

  data_type: 'tinyint'
  is_nullable: 1

=head2 dmh_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 dmh_action

  data_type: 'longtext'
  is_nullable: 0

=head2 dmh_rollback

  data_type: 'longtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "dmh_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "dmh_doid",
  { data_type => "integer", is_nullable => 0 },
  "dmh_peid",
  { data_type => "integer", is_nullable => 0 },
  "dmh_bulk",
  { data_type => "tinyint", is_nullable => 1 },
  "dmh_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "dmh_action",
  { data_type => "longtext", is_nullable => 0 },
  "dmh_rollback",
  { data_type => "longtext", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("dmh_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P8rLoIINM6DMnZMF+qFRxA
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/DomainModificationHistory.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::DomainModificationHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::DomainModificationHistory

=cut

__PACKAGE__->table("domain_modification_history");

=head1 ACCESSORS

=head2 dmh_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 dmh_doid

  data_type: 'integer'
  is_nullable: 0

=head2 dmh_peid

  data_type: 'integer'
  is_nullable: 0

=head2 dmh_bulk

  data_type: 'tinyint'
  is_nullable: 1

=head2 dmh_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 dmh_action

  data_type: 'longtext'
  is_nullable: 0

=head2 dmh_rollback

  data_type: 'longtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "dmh_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "dmh_doid",
  { data_type => "integer", is_nullable => 0 },
  "dmh_peid",
  { data_type => "integer", is_nullable => 0 },
  "dmh_bulk",
  { data_type => "tinyint", is_nullable => 1 },
  "dmh_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "dmh_action",
  { data_type => "longtext", is_nullable => 0 },
  "dmh_rollback",
  { data_type => "longtext", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("dmh_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6ZdUP87Lditc92mqxHuHcQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/DomainModificationHistory.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
