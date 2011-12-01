package Notice::DB::Result::Config;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Config

=cut

__PACKAGE__->table("config");

=head1 ACCESSORS

=head2 cf_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 cf_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 cf_moid

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cf_type

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cf_grid

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cf_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "cf_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "cf_moid",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cf_type",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cf_grid",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("cf_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AiXP4KIimYaAhuldTTln2A
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Config.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Config;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Config

=cut

__PACKAGE__->table("config");

=head1 ACCESSORS

=head2 cf_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 cf_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 cf_moid

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cf_type

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cf_grid

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cf_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "cf_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "cf_moid",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cf_type",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cf_grid",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("cf_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CMht7hoFBhqXhe8Kd76YsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Config.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
