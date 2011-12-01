package Notice::DB::Result::Relation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Relation

=cut

__PACKAGE__->table("relations");

=head1 ACCESSORS

=head2 re_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 re_peid

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 re_lation

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 re_to

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=cut

__PACKAGE__->add_columns(
  "re_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "re_peid",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "re_lation",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "re_to",
  { data_type => "varchar", is_nullable => 1, size => 128 },
);
__PACKAGE__->set_primary_key("re_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ix9DKR4GlHyGgCPNPOpudQ
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Relation.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Relation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Relation

=cut

__PACKAGE__->table("relations");

=head1 ACCESSORS

=head2 re_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 re_peid

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 re_lation

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 re_to

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=cut

__PACKAGE__->add_columns(
  "re_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "re_peid",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "re_lation",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "re_to",
  { data_type => "varchar", is_nullable => 1, size => 128 },
);
__PACKAGE__->set_primary_key("re_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MuQ8eGWnf8uqYwIdcVP+1w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Relation.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
