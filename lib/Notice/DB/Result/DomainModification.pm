package Notice::DB::Result::DomainModification;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::DomainModification

=cut

__PACKAGE__->table("domain_modification");

=head1 ACCESSORS

=head2 dm_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 dm_doid

  data_type: 'integer'
  is_nullable: 0

=head2 dm_action

  data_type: 'enum'
  extra: {list => ["adding","removing","updating","incrementing"]}
  is_nullable: 1

=head2 dm_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 dm_by

  data_type: 'integer'
  is_nullable: 0

=head2 dm_data

  data_type: 'longtext'
  is_nullable: 1

=head2 dm_dostatus

  data_type: 'enum'
  extra: {list => ["disabled","suspended","enabled","migrating out","migrating in","registering","desired","disputed"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "dm_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "dm_doid",
  { data_type => "integer", is_nullable => 0 },
  "dm_action",
  {
    data_type => "enum",
    extra => { list => ["adding", "removing", "updating", "incrementing"] },
    is_nullable => 1,
  },
  "dm_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "dm_by",
  { data_type => "integer", is_nullable => 0 },
  "dm_data",
  { data_type => "longtext", is_nullable => 1 },
  "dm_dostatus",
  {
    data_type => "enum",
    extra => {
      list => [
        "disabled",
        "suspended",
        "enabled",
        "migrating out",
        "migrating in",
        "registering",
        "desired",
        "disputed",
      ],
    },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("dm_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0JdsWKVDNgb7kZ+lTuMYEw
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/DomainModification.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::DomainModification;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::DomainModification

=cut

__PACKAGE__->table("domain_modification");

=head1 ACCESSORS

=head2 dm_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 dm_doid

  data_type: 'integer'
  is_nullable: 0

=head2 dm_action

  data_type: 'enum'
  extra: {list => ["adding","removing","updating","incrementing"]}
  is_nullable: 1

=head2 dm_when

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 dm_by

  data_type: 'integer'
  is_nullable: 0

=head2 dm_data

  data_type: 'longtext'
  is_nullable: 1

=head2 dm_dostatus

  data_type: 'enum'
  extra: {list => ["disabled","suspended","enabled","migrating out","migrating in","registering","desired","disputed"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "dm_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "dm_doid",
  { data_type => "integer", is_nullable => 0 },
  "dm_action",
  {
    data_type => "enum",
    extra => { list => ["adding", "removing", "updating", "incrementing"] },
    is_nullable => 1,
  },
  "dm_when",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "dm_by",
  { data_type => "integer", is_nullable => 0 },
  "dm_data",
  { data_type => "longtext", is_nullable => 1 },
  "dm_dostatus",
  {
    data_type => "enum",
    extra => {
      list => [
        "disabled",
        "suspended",
        "enabled",
        "migrating out",
        "migrating in",
        "registering",
        "desired",
        "disputed",
      ],
    },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("dm_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NSDTMJ1m/cKANGv2ASD7bw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/DomainModification.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
