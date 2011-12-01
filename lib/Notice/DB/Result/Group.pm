package Notice::DB::Result::Group;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Group

=cut

__PACKAGE__->table("groups");

=head1 ACCESSORS

=head2 gr_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 gr_acid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 gr_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 gr_function

  data_type: 'mediumtext'
  is_nullable: 1

=head2 gr_public

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 gr_modid

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 gr_category

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "gr_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "gr_acid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "gr_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "gr_function",
  { data_type => "mediumtext", is_nullable => 1 },
  "gr_public",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "gr_modid",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "gr_category",
  { data_type => "varchar", is_nullable => 1, size => 8 },
);
__PACKAGE__->set_primary_key("gr_acid", "gr_name");
__PACKAGE__->add_unique_constraint("gr_id", ["gr_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:egi667jFe/31ag2X951Hpw
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Group.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Group;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Group

=cut

__PACKAGE__->table("groups");

=head1 ACCESSORS

=head2 gr_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 gr_acid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 gr_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 gr_function

  data_type: 'mediumtext'
  is_nullable: 1

=head2 gr_public

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 gr_modid

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 gr_category

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "gr_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "gr_acid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "gr_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "gr_function",
  { data_type => "mediumtext", is_nullable => 1 },
  "gr_public",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "gr_modid",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "gr_category",
  { data_type => "varchar", is_nullable => 1, size => 8 },
);
__PACKAGE__->set_primary_key("gr_acid", "gr_name");
__PACKAGE__->add_unique_constraint("gr_id", ["gr_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GXImIPSdV5ftUo2sKYSdVg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Group.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;