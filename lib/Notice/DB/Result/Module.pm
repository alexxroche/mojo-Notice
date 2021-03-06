package Notice::DB::Result::Module;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Module

=cut

__PACKAGE__->table("modules");

=head1 ACCESSORS

=head2 mo_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 mo_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 mo_description

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 mo_uuid

  data_type: 'char'
  is_nullable: 1
  size: 36

=head2 mo_menu_tag

  data_type: 'varchar'
  is_nullable: 1
  size: 36

=head2 mo_default_hierarchy

  data_type: 'integer'
  is_nullable: 1

=head2 mo_author

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mo_maintainers

  data_type: 'blob'
  is_nullable: 1

=head2 mo_dependencies

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mo_catagorie

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 mo_src_url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 mo_update_url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 mo_version

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mo_user_use

  data_type: 'enum'
  default_value: 'none'
  extra: {list => ["none","use","access","limited read","read","insert","update","admin_read","admin_write"]}
  is_nullable: 1

=head2 mo_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "mo_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "mo_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "mo_description",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "mo_uuid",
  { data_type => "char", is_nullable => 1, size => 36 },
  "mo_menu_tag",
  { data_type => "varchar", is_nullable => 1, size => 36 },
  "mo_default_hierarchy",
  { data_type => "integer", is_nullable => 1 },
  "mo_author",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mo_maintainers",
  { data_type => "blob", is_nullable => 1 },
  "mo_dependencies",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mo_catagorie",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "mo_src_url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "mo_update_url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "mo_version",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mo_user_use",
  {
    data_type => "enum",
    default_value => "none",
    extra => {
      list => [
        "none",
        "use",
        "access",
        "limited read",
        "read",
        "insert",
        "update",
        "admin_read",
        "admin_write",
      ],
    },
    is_nullable => 1,
  },
  "mo_notes",
  { data_type => "blob", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("mo_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+AWal5rn9dlxQSV5YHygzQ
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Module.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Module;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Module

=cut

__PACKAGE__->table("modules");

=head1 ACCESSORS

=head2 mo_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 mo_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 mo_description

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 mo_uuid

  data_type: 'char'
  is_nullable: 1
  size: 36

=head2 mo_menu_tag

  data_type: 'varchar'
  is_nullable: 1
  size: 36

=head2 mo_default_hierarchy

  data_type: 'integer'
  is_nullable: 1

=head2 mo_author

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mo_maintainers

  data_type: 'blob'
  is_nullable: 1

=head2 mo_dependencies

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mo_catagorie

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 mo_src_url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 mo_update_url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 mo_version

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mo_user_use

  data_type: 'enum'
  default_value: 'none'
  extra: {list => ["none","use","access","limited read","read","insert","update","admin_read","admin_write"]}
  is_nullable: 1

=head2 mo_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "mo_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "mo_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "mo_description",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "mo_uuid",
  { data_type => "char", is_nullable => 1, size => 36 },
  "mo_menu_tag",
  { data_type => "varchar", is_nullable => 1, size => 36 },
  "mo_default_hierarchy",
  { data_type => "integer", is_nullable => 1 },
  "mo_author",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mo_maintainers",
  { data_type => "blob", is_nullable => 1 },
  "mo_dependencies",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mo_catagorie",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "mo_src_url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "mo_update_url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "mo_version",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mo_user_use",
  {
    data_type => "enum",
    default_value => "none",
    extra => {
      list => [
        "none",
        "use",
        "access",
        "limited read",
        "read",
        "insert",
        "update",
        "admin_read",
        "admin_write",
      ],
    },
    is_nullable => 1,
  },
  "mo_notes",
  { data_type => "blob", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("mo_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YnzXk03rSDsTNdJbUjyXqw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Module.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
