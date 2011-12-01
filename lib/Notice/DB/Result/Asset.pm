package Notice::DB::Result::Asset;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Asset

=cut

__PACKAGE__->table("assets");

=head1 ACCESSORS

=head2 as_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 as_cid

  data_type: 'integer'
  is_nullable: 0

=head2 as_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 as_acid

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 as_owner

  data_type: 'integer'
  is_nullable: 1

=head2 as_user

  data_type: 'integer'
  is_nullable: 1

=head2 as_adid

  data_type: 'integer'
  is_nullable: 1

=head2 as_grid

  data_type: 'integer'
  is_nullable: 1

=head2 as_in_asid

  data_type: 'integer'
  is_nullable: 1

=head2 as_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "as_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "as_cid",
  { data_type => "integer", is_nullable => 0 },
  "as_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "as_acid",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "as_owner",
  { data_type => "integer", is_nullable => 1 },
  "as_user",
  { data_type => "integer", is_nullable => 1 },
  "as_adid",
  { data_type => "integer", is_nullable => 1 },
  "as_grid",
  { data_type => "integer", is_nullable => 1 },
  "as_in_asid",
  { data_type => "integer", is_nullable => 1 },
  "as_notes",
  { data_type => "blob", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("as_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QM8Kl1jc2/ao0NPLui0wnQ
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Asset.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Asset;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Asset

=cut

__PACKAGE__->table("assets");

=head1 ACCESSORS

=head2 as_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 as_cid

  data_type: 'integer'
  is_nullable: 0

=head2 as_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 as_acid

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 as_owner

  data_type: 'integer'
  is_nullable: 1

=head2 as_user

  data_type: 'integer'
  is_nullable: 1

=head2 as_adid

  data_type: 'integer'
  is_nullable: 1

=head2 as_grid

  data_type: 'integer'
  is_nullable: 1

=head2 as_in_asid

  data_type: 'integer'
  is_nullable: 1

=head2 as_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "as_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "as_cid",
  { data_type => "integer", is_nullable => 0 },
  "as_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "as_acid",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "as_owner",
  { data_type => "integer", is_nullable => 1 },
  "as_user",
  { data_type => "integer", is_nullable => 1 },
  "as_adid",
  { data_type => "integer", is_nullable => 1 },
  "as_grid",
  { data_type => "integer", is_nullable => 1 },
  "as_in_asid",
  { data_type => "integer", is_nullable => 1 },
  "as_notes",
  { data_type => "blob", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("as_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Q+H3nrD8A28cYbp5nuSQgw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Asset.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
