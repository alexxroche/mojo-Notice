#!/usr/bin/env perl
use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

if ( !$ENV{TEST_DB} ) {
    my $msg = 'Configure DB and then set $ENV{TEST_DB} to a true value to run.';
    plan skip_all => $msg;
}

plan tests => 4;

use_ok 'Notice';

my $t = Test::Mojo->new('Notice');
$t->get_ok('/welcome')->status_is(200)->content_like(qr/Mojolicious/i);
