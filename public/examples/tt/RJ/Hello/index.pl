#!/usr/bin/env perl

package Hello::index;

use strict;
use warnings;

use base 'Mojolicious::Controller';

sub index {
    my ($self) = @_;
    $self->render(
        template    => 'index',
    );
}

1;

