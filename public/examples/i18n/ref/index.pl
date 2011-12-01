#!/usr/bin/env perl

use Mojolicious::Lite;
plugin I18N => {namespace => 'MyApp::I18N'};
#  %=l 'hello'

# Lexicon
  package MyApp::I18N::de;
  use Mojo::Base 'MyApp::I18N';

  our %Lexicon = (hello => 'hallo');

1;
