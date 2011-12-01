package Notice::DB::Result::Account;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Account

=cut

__PACKAGE__->table("account");

=head1 ACCESSORS

=head2 ac_tree

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 ac_name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ac_notes

  data_type: 'blob'
  is_nullable: 1

=head2 ac_parent

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ac_useradd

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 ac_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 ac_min

  data_type: 'integer'
  is_nullable: 1

=head2 ac_max

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ac_tree",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "ac_name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ac_notes",
  { data_type => "blob", is_nullable => 1 },
  "ac_parent",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ac_useradd",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "ac_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "ac_min",
  { data_type => "integer", is_nullable => 1 },
  "ac_max",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("ac_id");
__PACKAGE__->add_unique_constraint("id", ["ac_id", "ac_tree"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pSpq0tcm/9Po/D9o9E9Tbw
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Account.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Account;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Account

=cut

__PACKAGE__->table("account");

=head1 ACCESSORS

=head2 ac_tree

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 ac_name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ac_notes

  data_type: 'blob'
  is_nullable: 1

=head2 ac_parent

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ac_useradd

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 ac_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 ac_min

  data_type: 'integer'
  is_nullable: 1

=head2 ac_max

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ac_tree",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "ac_name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ac_notes",
  { data_type => "blob", is_nullable => 1 },
  "ac_parent",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ac_useradd",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "ac_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "ac_min",
  { data_type => "integer", is_nullable => 1 },
  "ac_max",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("ac_id");
__PACKAGE__->add_unique_constraint("id", ["ac_id", "ac_tree"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iJgGfEeMJMKXm1mUZOKPlQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Account.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
