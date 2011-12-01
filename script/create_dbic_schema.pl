#!/usr/bin/perl
use strict;
use warnings;
use FindBin qw/$Bin/;
use DBIx::Class::Schema::Loader qw/ make_schema_at /;
use Config::Auto;
use FindBin qw/$Bin/;
use lib "$Bin/../lib";

$| = 1;

my $cfg = Config::Auto::parse( 
	#File::Spec->catfile("..","config","config.pl"), format => "perl" 
	File::Spec->catfile("notice.config"), format => "perl" 
	);


make_schema_at(
        'Notice::DB',
        { debug => 1,relationships => 1, use_namespaces => 1, 
          dump_directory => File::Spec->catdir("$Bin","..","lib" )
        },
        [ $cfg->{db_dsn}, $cfg->{db_user}, $cfg->{db_pw} ],
);

__END__

=head1 NAME

DBIx::Class::Schema generator

=head1 SYNOPSIS

	~www/sites/mojo-Notice $ perl script/create_dbic_schema.pl 
	Dumping manual schema for DB to directory /var/www/sites/mojo-Notice/lib/Notice/DB ...
	Schema dump completed.

=head1 AUTHOR

Alexx Roche, C<< <notice-dev@alexx.net> >>

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2011 Alexx Roche

This program is free software; you can redistribute it and/or modify it
under the following license: Eclipse Public License, Version 1.0 ; 
or the Artistic License.

See http://www.opensource.org/licenses/ for more information.

=cut
