package Notice::DB::Result::SmtpConfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::SmtpConfig

=cut

__PACKAGE__->table("smtp_config");

=head1 ACCESSORS

=head2 smtp_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 smtp_server

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 smtp_section

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 smtp_key

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 smtp_value

  data_type: 'mediumtext'
  is_nullable: 1

=head2 smtp_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 smtp_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "smtp_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "smtp_server",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "smtp_section",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "smtp_key",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "smtp_value",
  { data_type => "mediumtext", is_nullable => 1 },
  "smtp_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "smtp_notes",
  { data_type => "blob", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:E8hs5jtI4iRU8mS1wfTCyg
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/SmtpConfig.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::SmtpConfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::SmtpConfig

=cut

__PACKAGE__->table("smtp_config");

=head1 ACCESSORS

=head2 smtp_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 smtp_server

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 smtp_section

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 smtp_key

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 smtp_value

  data_type: 'mediumtext'
  is_nullable: 1

=head2 smtp_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 smtp_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "smtp_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "smtp_server",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "smtp_section",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "smtp_key",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "smtp_value",
  { data_type => "mediumtext", is_nullable => 1 },
  "smtp_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "smtp_notes",
  { data_type => "blob", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T27uk1dPb2r9h0/2i9pLCA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/SmtpConfig.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
