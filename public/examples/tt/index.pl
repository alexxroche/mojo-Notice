#!/usr/bin/env perl
use strict;
use warnings;

use Mojolicious::Lite;
use Mojolicious::Plugin::TtRenderer;
app->secret('not');

plugin tt_renderer => {template_options => { INCLUDE_PATH => 'templates/', WRAPPER => 'wrapper.html.tt'}};
app->renderer->default_handler('tt');

get '/' => sub {
  my ($self) = @_;
  #$self->session(expires => 1); #clear bad cookie
  $self->render('index');
};

get '/s' => sub {
  my ($self) = @_;
  my $d = app->static->root();
  $self->render(text => "The static dir is: $d");
};

app->start;
