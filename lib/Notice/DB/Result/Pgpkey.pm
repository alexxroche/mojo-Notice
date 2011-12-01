package Notice::DB::Result::Pgpkey;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Pgpkey

=cut

__PACKAGE__->table("PGPkeys");

=head1 ACCESSORS

=head2 pk_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 pk_peid

  data_type: 'integer'
  is_nullable: 1

=head2 pk_address

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 pk_gpgpublickey

  data_type: 'blob'
  is_nullable: 0

=head2 pk_gpgprivatekey

  data_type: 'blob'
  is_nullable: 1

=head2 pk_public

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 pk_revocation

  data_type: 'blob'
  is_nullable: 1

=head2 pk_exclusive

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 pk_expires

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pk_passphrase

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=cut

__PACKAGE__->add_columns(
  "pk_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "pk_peid",
  { data_type => "integer", is_nullable => 1 },
  "pk_address",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "pk_gpgpublickey",
  { data_type => "blob", is_nullable => 0 },
  "pk_gpgprivatekey",
  { data_type => "blob", is_nullable => 1 },
  "pk_public",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "pk_revocation",
  { data_type => "blob", is_nullable => 1 },
  "pk_exclusive",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "pk_expires",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pk_passphrase",
  { data_type => "varchar", is_nullable => 1, size => 256 },
);
__PACKAGE__->set_primary_key("pk_address", "pk_id");
__PACKAGE__->add_unique_constraint("pk_id", ["pk_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:orayPScz5KVlBybLZAIY1g
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Pgpkey.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Pgpkey;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Pgpkey

=cut

__PACKAGE__->table("PGPkeys");

=head1 ACCESSORS

=head2 pk_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 pk_peid

  data_type: 'integer'
  is_nullable: 1

=head2 pk_address

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 pk_gpgpublickey

  data_type: 'blob'
  is_nullable: 0

=head2 pk_gpgprivatekey

  data_type: 'blob'
  is_nullable: 1

=head2 pk_public

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 pk_revocation

  data_type: 'blob'
  is_nullable: 1

=head2 pk_exclusive

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 pk_expires

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 pk_passphrase

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=cut

__PACKAGE__->add_columns(
  "pk_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "pk_peid",
  { data_type => "integer", is_nullable => 1 },
  "pk_address",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "pk_gpgpublickey",
  { data_type => "blob", is_nullable => 0 },
  "pk_gpgprivatekey",
  { data_type => "blob", is_nullable => 1 },
  "pk_public",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "pk_revocation",
  { data_type => "blob", is_nullable => 1 },
  "pk_exclusive",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "pk_expires",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "pk_passphrase",
  { data_type => "varchar", is_nullable => 1, size => 256 },
);
__PACKAGE__->set_primary_key("pk_address", "pk_id");
__PACKAGE__->add_unique_constraint("pk_id", ["pk_id"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nwfa9Of1qIVRtlvK4uni6w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Pgpkey.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
