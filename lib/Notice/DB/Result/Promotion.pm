package Notice::DB::Result::Promotion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Promotion

=cut

__PACKAGE__->table("promotion");

=head1 ACCESSORS

=head2 promo_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 promo_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 promo_startdate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 promo_enddate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 promo_priid

  data_type: 'integer'
  is_nullable: 0

=head2 promo_reduction

  data_type: 'decimal'
  default_value: 0.0000
  is_nullable: 1
  size: [10,4]

=head2 promo_ter

  data_type: 'integer'
  is_nullable: 0

=head2 promo_approver

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "promo_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "promo_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "promo_startdate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "promo_enddate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "promo_priid",
  { data_type => "integer", is_nullable => 0 },
  "promo_reduction",
  {
    data_type => "decimal",
    default_value => "0.0000",
    is_nullable => 1,
    size => [10, 4],
  },
  "promo_ter",
  { data_type => "integer", is_nullable => 0 },
  "promo_approver",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("promo_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:82DEwU5TuiT+TbmGJDHUNg
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Promotion.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Promotion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Promotion

=cut

__PACKAGE__->table("promotion");

=head1 ACCESSORS

=head2 promo_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 promo_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 promo_startdate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 promo_enddate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 promo_priid

  data_type: 'integer'
  is_nullable: 0

=head2 promo_reduction

  data_type: 'decimal'
  default_value: 0.0000
  is_nullable: 1
  size: [10,4]

=head2 promo_ter

  data_type: 'integer'
  is_nullable: 0

=head2 promo_approver

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "promo_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "promo_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "promo_startdate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "promo_enddate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "promo_priid",
  { data_type => "integer", is_nullable => 0 },
  "promo_reduction",
  {
    data_type => "decimal",
    default_value => "0.0000",
    is_nullable => 1,
    size => [10, 4],
  },
  "promo_ter",
  { data_type => "integer", is_nullable => 0 },
  "promo_approver",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("promo_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7paTbQdo8Sj33kYQRP73kQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Promotion.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
