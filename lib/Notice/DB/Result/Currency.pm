package Notice::DB::Result::Currency;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Currency

=cut

__PACKAGE__->table("currency");

=head1 ACCESSORS

=head2 cur_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 cur_name

  data_type: 'char'
  is_nullable: 0
  size: 64

=head2 cur_short

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 cur_territory

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cur_htmlsymbol

  data_type: 'char'
  is_nullable: 1
  size: 32

=head2 cur_gold_standard

  data_type: 'decimal'
  is_nullable: 1
  size: [20,20]

=head2 cur_iso4217

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cur_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "cur_name",
  { data_type => "char", is_nullable => 0, size => 64 },
  "cur_short",
  { data_type => "char", is_nullable => 0, size => 3 },
  "cur_territory",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cur_htmlsymbol",
  { data_type => "char", is_nullable => 1, size => 32 },
  "cur_gold_standard",
  { data_type => "decimal", is_nullable => 1, size => [20, 20] },
  "cur_iso4217",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("cur_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:P/qyi/zH8i83Dv8c71UG3w
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Currency.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Currency;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Currency

=cut

__PACKAGE__->table("currency");

=head1 ACCESSORS

=head2 cur_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 cur_name

  data_type: 'char'
  is_nullable: 0
  size: 64

=head2 cur_short

  data_type: 'char'
  is_nullable: 0
  size: 3

=head2 cur_territory

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cur_htmlsymbol

  data_type: 'char'
  is_nullable: 1
  size: 32

=head2 cur_gold_standard

  data_type: 'decimal'
  is_nullable: 1
  size: [20,20]

=head2 cur_iso4217

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cur_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "cur_name",
  { data_type => "char", is_nullable => 0, size => 64 },
  "cur_short",
  { data_type => "char", is_nullable => 0, size => 3 },
  "cur_territory",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cur_htmlsymbol",
  { data_type => "char", is_nullable => 1, size => 32 },
  "cur_gold_standard",
  { data_type => "decimal", is_nullable => 1, size => [20, 20] },
  "cur_iso4217",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("cur_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MbNE1AtoWL7KgiZQOMYDrw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Currency.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
