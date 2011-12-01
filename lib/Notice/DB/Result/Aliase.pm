package Notice::DB::Result::Aliase;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Aliase

=cut

__PACKAGE__->table("aliases");

=head1 ACCESSORS

=head2 ea_userid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 ea_domain

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ea_touser

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 ea_at

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 ea_doid

  data_type: 'integer'
  is_nullable: 0

=head2 ea_suspended

  data_type: 'tinyint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ea_userid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "ea_domain",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ea_touser",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "ea_at",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "ea_doid",
  { data_type => "integer", is_nullable => 0 },
  "ea_suspended",
  { data_type => "tinyint", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("ea_userid", "ea_doid", "ea_touser", "ea_at");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1+sx3q3mkAuLmYvZrKEtyA
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Aliase.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Aliase;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Aliase

=cut

__PACKAGE__->table("aliases");

=head1 ACCESSORS

=head2 ea_userid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 ea_domain

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ea_touser

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 ea_at

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 128

=head2 ea_doid

  data_type: 'integer'
  is_nullable: 0

=head2 ea_suspended

  data_type: 'tinyint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ea_userid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "ea_domain",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ea_touser",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "ea_at",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "ea_doid",
  { data_type => "integer", is_nullable => 0 },
  "ea_suspended",
  { data_type => "tinyint", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("ea_userid", "ea_doid", "ea_touser", "ea_at");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cpafUPKbyW23r2JqzkAjDg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Aliase.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
