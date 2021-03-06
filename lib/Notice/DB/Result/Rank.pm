package Notice::DB::Result::Rank;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Rank

=cut

__PACKAGE__->table("ranks");

=head1 ACCESSORS

=head2 ra_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 ra_precedence

  data_type: 'integer'
  is_nullable: 1

=head2 ra_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 ra_boatn

  data_type: 'enum'
  default_value: 'before'
  extra: {list => ["before"," after"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ra_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "ra_precedence",
  { data_type => "integer", is_nullable => 1 },
  "ra_name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "ra_boatn",
  {
    data_type => "enum",
    default_value => "before",
    extra => { list => ["before", " after"] },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("ra_id");
__PACKAGE__->add_unique_constraint("ra_name", ["ra_name"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/pV/pmuGEjvK9g02lh/Nbg
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Rank.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Rank;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Rank

=cut

__PACKAGE__->table("ranks");

=head1 ACCESSORS

=head2 ra_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 ra_precedence

  data_type: 'integer'
  is_nullable: 1

=head2 ra_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 ra_boatn

  data_type: 'enum'
  default_value: 'before'
  extra: {list => ["before"," after"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ra_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "ra_precedence",
  { data_type => "integer", is_nullable => 1 },
  "ra_name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "ra_boatn",
  {
    data_type => "enum",
    default_value => "before",
    extra => { list => ["before", " after"] },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("ra_id");
__PACKAGE__->add_unique_constraint("ra_name", ["ra_name"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7BW3F6eANUD/3TbQf2NmUg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Rank.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
