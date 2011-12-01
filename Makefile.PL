use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'mojo-Notice',
    AUTHOR              => q{Alexx Roche <notice-dev@alexx.net>},
    VERSION_FROM        => 'lib/Notice.pm',
    #ABSTRACT_FROM       => 'lib/Notice.pm',
    ABSTRACT       => 'A Mojolicious MVC functionality example, inspired by Notice',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'This program is free software; you can redistribute it and/or modify it
under the following license: Eclipse Public License, Version 1.0  or the Artistic License.

See http://www.opensource.org/licenses/ for more information.
')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Mojolicious::Controller' => 0,
        'ExtUtils::MakeMaker' => 0,
        'DBIx::Class::Core' => 0,
        'DBIx::Class::Schema' => 0,
        'File::Basename' => 0,
        'Config::Auto' => 0,
        'Digest::SHA1' => 0,
        'Data::Dumper' => 0,
        'File::Spec' => 0,
        'Test::More' => 0,
        'Test::Mojo' => 0,
        'Mojo::Base' => 0,
        'Carp' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'mojo-Notice-*' },
);


