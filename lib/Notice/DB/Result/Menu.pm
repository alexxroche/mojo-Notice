package Notice::DB::Result::Menu;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Menu

=cut

__PACKAGE__->table("menu");

=head1 ACCESSORS

=head2 pe_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 menu

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 32

=head2 pref

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hidden

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "pe_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "menu",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 32 },
  "pref",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "hidden",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("pe_id", "menu");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CLvehQfvHc/Q8t81SL+FxQ
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Menu.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Menu;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Menu

=cut

__PACKAGE__->table("menu");

=head1 ACCESSORS

=head2 pe_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 menu

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 32

=head2 pref

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 hidden

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "pe_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "menu",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 32 },
  "pref",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "hidden",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("pe_id", "menu");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:B0K2gZ9CLxVD8u1psHsXVw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Menu.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
