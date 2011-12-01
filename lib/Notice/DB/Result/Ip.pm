package Notice::DB::Result::Ip;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Ip

=cut

__PACKAGE__->table("ip");

=head1 ACCESSORS

=head2 ip_o1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 4

=head2 ip_o2

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o3

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o4

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o5

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o6

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o7

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o8

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_slash

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ip_type

  data_type: 'enum'
  default_value: 'IPv4'
  extra: {list => ["IPv4","IPv6"]}
  is_nullable: 1

=head2 ip_usedfor

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ip_network

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ip_stockref

  data_type: 'integer'
  is_nullable: 1

=head2 ip_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ip_o1",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 4 },
  "ip_o2",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o3",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o4",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o5",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o6",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o7",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o8",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_slash",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 1 },
  "ip_type",
  {
    data_type => "enum",
    default_value => "IPv4",
    extra => { list => ["IPv4", "IPv6"] },
    is_nullable => 1,
  },
  "ip_usedfor",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ip_network",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ip_stockref",
  { data_type => "integer", is_nullable => 1 },
  "ip_notes",
  { data_type => "blob", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-12-01 10:51:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UeKi3gP9LiHAwr2jz6hmJw
# These lines were loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Ip.pm' found in @INC.
# They are now part of the custom portion of this file
# for you to hand-edit.  If you do not either delete
# this section or remove that file from @INC, this section
# will be repeated redundantly when you re-create this
# file again via Loader!  See skip_load_external to disable
# this feature.

package Notice::DB::Result::Ip;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Notice::DB::Result::Ip

=cut

__PACKAGE__->table("ip");

=head1 ACCESSORS

=head2 ip_o1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 4

=head2 ip_o2

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o3

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o4

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o5

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o6

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o7

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_o8

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 ip_slash

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ip_type

  data_type: 'enum'
  default_value: 'IPv4'
  extra: {list => ["IPv4","IPv6"]}
  is_nullable: 1

=head2 ip_usedfor

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ip_network

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ip_stockref

  data_type: 'integer'
  is_nullable: 1

=head2 ip_notes

  data_type: 'blob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ip_o1",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 4 },
  "ip_o2",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o3",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o4",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o5",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o6",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o7",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_o8",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "ip_slash",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 1 },
  "ip_type",
  {
    data_type => "enum",
    default_value => "IPv4",
    extra => { list => ["IPv4", "IPv6"] },
    is_nullable => 1,
  },
  "ip_usedfor",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ip_network",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ip_stockref",
  { data_type => "integer", is_nullable => 1 },
  "ip_notes",
  { data_type => "blob", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-11-24 17:01:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GNtfzmpBXiwJ7zbhfDzuww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
# End of lines loaded from '/usr/local/share/perl/5.10.0/Notice/DB/Result/Ip.pm' 


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
