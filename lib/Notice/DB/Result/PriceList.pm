package Notice::DB::Result::PriceList;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::PriceList

=cut

__PACKAGE__->table("price_list");

=head1 ACCESSORS

=head2 pri_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 pri_mpid

  data_type: 'integer'
  is_nullable: 1

=head2 pri_acid

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pri_item

  data_type: 'char'
  is_nullable: 0
  size: 16

=head2 pri_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pri_unitprice

  data_type: 'decimal'
  is_nullable: 1
  size: [10,4]

=head2 pri_period

  data_type: 'char'
  default_value: '1y'
  is_nullable: 1
  size: 16

=head2 pri_curid

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "pri_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "pri_mpid",
  { data_type => "integer", is_nullable => 1 },
  "pri_acid",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pri_item",
  { data_type => "char", is_nullable => 0, size => 16 },
  "pri_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pri_unitprice",
  { data_type => "decimal", is_nullable => 1, size => [10, 4] },
  "pri_period",
  { data_type => "char", default_value => "1y", is_nullable => 1, size => 16 },
  "pri_curid",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("pri_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1U0y7MnBHj5tsV+9ZQm/LA
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/PriceList.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::PriceList;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::PriceList

=cut

__PACKAGE__->table("price_list");

=head1 ACCESSORS

=head2 pri_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 pri_mpid

  data_type: 'integer'
  is_nullable: 1

=head2 pri_acid

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pri_item

  data_type: 'char'
  is_nullable: 0
  size: 16

=head2 pri_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pri_unitprice

  data_type: 'decimal'
  is_nullable: 1
  size: [10,4]

=head2 pri_period

  data_type: 'char'
  default_value: '1y'
  is_nullable: 1
  size: 16

=head2 pri_curid

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "pri_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "pri_mpid",
  { data_type => "integer", is_nullable => 1 },
  "pri_acid",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pri_item",
  { data_type => "char", is_nullable => 0, size => 16 },
  "pri_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pri_unitprice",
  { data_type => "decimal", is_nullable => 1, size => [10, 4] },
  "pri_period",
  { data_type => "char", default_value => "1y", is_nullable => 1, size => 16 },
  "pri_curid",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("pri_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:77/Gk4RadPJ1z2E2G2kCVA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/PriceList.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
