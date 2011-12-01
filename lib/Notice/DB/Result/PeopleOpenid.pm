package Notice::DB::Result::PeopleOpenid;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::PeopleOpenid

=cut

__PACKAGE__->table("people_openids");

=head1 ACCESSORS

=head2 openid_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 pe_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "openid_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "pe_id",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("openid_url");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dCsGQGJ1yei9LCytq+oNmA
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/PeopleOpenid.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::PeopleOpenid;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::PeopleOpenid

=cut

__PACKAGE__->table("people_openids");

=head1 ACCESSORS

=head2 openid_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 pe_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "openid_url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "pe_id",
  { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("openid_url");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XeZ8/ZmtsHPL4QrNmTcgYw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/PeopleOpenid.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
