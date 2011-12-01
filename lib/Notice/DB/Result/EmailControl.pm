package Notice::DB::Result::EmailControl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::EmailControl

=cut

__PACKAGE__->table("email_control");

=head1 ACCESSORS

=head2 ec_doid

  data_type: 'integer'
  is_nullable: 0

=head2 ec_max_imap

  data_type: 'integer'
  is_nullable: 1

=head2 ec_max_aliases

  data_type: 'integer'
  is_nullable: 1

=head2 ec_aliases_group

  data_type: 'integer'
  is_nullable: 1

=head2 ec_imap_group

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ec_doid",
  { data_type => "integer", is_nullable => 0 },
  "ec_max_imap",
  { data_type => "integer", is_nullable => 1 },
  "ec_max_aliases",
  { data_type => "integer", is_nullable => 1 },
  "ec_aliases_group",
  { data_type => "integer", is_nullable => 1 },
  "ec_imap_group",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("ec_doid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:akqwN0S2TN9dIEWboIcXgA
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/EmailControl.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::EmailControl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::EmailControl

=cut

__PACKAGE__->table("email_control");

=head1 ACCESSORS

=head2 ec_doid

  data_type: 'integer'
  is_nullable: 0

=head2 ec_max_imap

  data_type: 'integer'
  is_nullable: 1

=head2 ec_max_aliases

  data_type: 'integer'
  is_nullable: 1

=head2 ec_aliases_group

  data_type: 'integer'
  is_nullable: 1

=head2 ec_imap_group

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ec_doid",
  { data_type => "integer", is_nullable => 0 },
  "ec_max_imap",
  { data_type => "integer", is_nullable => 1 },
  "ec_max_aliases",
  { data_type => "integer", is_nullable => 1 },
  "ec_aliases_group",
  { data_type => "integer", is_nullable => 1 },
  "ec_imap_group",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("ec_doid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/KusI0S8lbOGyyPyfoIPug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/EmailControl.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
