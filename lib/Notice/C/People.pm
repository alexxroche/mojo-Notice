package Notice::C::People;
use Mojo::Base 'Mojolicious::Controller';

use DBIx::Class::Schema qw/dbic_config schema resultset/;

our $VERSION = '0.01';
our %opt = ('D'=>0); #debug and other options

=head1 NAME

Notice::C::People 

=cut

=head1 SYNOPSIS

    A controller module for Notice.
    
    Imports DBIx::Class schema here for all subclasses generated by script/create_controller.pl

=head1 DESCRIPTION

This module acts as the base class for Controllers for this app. Subclasses are found
in the ::C package.

=head1 METHODS

=head2 SUBCLASSED METHODS

=cut


#sub check_authentication {
#  my $self = shift;
#  if ( $self->session('user') && $self->session('user') eq ''){
#    $self->stash('destination' => 'mainstash'); #does not seem to work
#    $self->session('destination' => 'mainses');
#    $self->param('destination' => 'mainline');
#    return $self->redirect_to('login');
#  }
#}

=head3 main

The main (default) action

=cut

# This action will render a template
sub main {
  my $self = shift;
  $self->Notice::cgiapp_init;

  #return $self->redirect_to('login', destination => 'mainline') unless $self->session('user') ne '';
  # Are they logged in?
    # need to abstract authentication checks into some base class (or at least a sub routine; same with $title)
  if ( $self->session('user') eq ''){
    $self->stash('destination' => 'mainstash'); #does not seem to work
    $self->session('destination' => 'people');
    $self->param('destination' => 'mainline');
    return $self->redirect_to('login');
  }
  my $rm = $self->url_for('current') || 'main';
  #if(keys %{$self}){ $rm = $self->param('rm'); }else{ $rm = $self->req->url->path(); }
  my $user = $self->session('user');
  my $ip   = $self->req->env->{'REMOTE_ADDR'} || 'localhost';

 # my $title = 'Notice CRaAM main - ' . $user .' AT '. $ip;

  # Render template "main/main.html.ep" with message
  $self->render(
    message => 'Welcome to Notice (v 0.1) using the Mojolicious real-time web framework',
    welcome => 'This is an MVC example of Mojolicious with I18N (internationalisation). <br />
 The "M" will be DBIx::Class, the "V" is Template::Toolkit, the "C" (and everything else) is Mojolicious.<br />
This is a mojo-port from my CGI::Application version of Notice');

}#sub main

=head3 list

list people

=cut

sub list {
  my $self = shift;
 # $self->check_authentication;
  if ( $self->session('user') eq ''){
        $self->session('destination' => 'people/list');
        return $self->redirect_to('login');
  }

  my $rm = $self->url_for('current') || 'Broken';
  #if(keys %{$self}){ $rm = $self->param('rm'); }else{ $rm = $self->req->url->path(); }
  my $user = $self->session('user');
  my $ip   = $self->req->env->{'REMOTE_ADDR'} || 'localhost';
  my $title = 'Notice CRaAM ' . $rm . ' - "' . $user .'" AT '. $ip;
  my $body = '';
  my $url_path = '/';
  #if($self->req->env->{'THIS_IS_CGI'}){
  if($self->req->env->{'SCRIPT_NAME'}){
       $url_path = $self->req->env->{'SCRIPT_NAME'} . $url_path;
       $body .= "we have to prepend each href with index.cgi/ ";
       use Data::Dumper;
       $body .= "um... <br />";
       my $req = $self->req;
       my $env_hash = $self->req->env;
       my $hostname = $self->req->url->host;
       $body  .= Dumper($env_hash);
  }else{ #this is a Mojolicious daemon
    if($opt{D}>=1){
       use Data::Dumper;
       $body .= "um... <br />";
       my $req = $self->req;
       my $env_hash = $self->req->env;
       my $hostname = $self->req->url->host; 
       $body  .= Dumper($env_hash);
    }
  }

  $self->render(
    #template => 'main',
    url_path => $url_path,
    message => $self->url_for('current'),
    body => $body,
    );
  
}

=head3 delete

delete people

=cut

sub delete {
    my $self = shift;
    $self->Notice::cgiapp_init;
      my $url_path = '/';
  if($self->req->env->{'SCRIPT_NAME'}){
    $url_path = $self->req->env->{'SCRIPT_NAME'} . $url_path;
  }
  #$self->param(url_path => $url_path);
  $self->stash(url_path => $url_path);

    my $rm = lc(__PACKAGE__); $rm=~s/.*:://;
    $self->render(template => "$rm/main");
}

1;

__END__

=head1 BUGS AND LIMITATIONS

Probably, and certainly better ways to do the same thing

=head1 SEE ALSO

L<Notice>, L<mojolicious>

=head1 AUTHOR

Alexx Roche, C<< notice-dev@alexx.net >>

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2011 Alexx Roche

This program is free software; you can redistribute it and/or modify it
under the following license: Eclipse Public License, Version 1.0 ; 
or the Artistic License.

See http://www.opensource.org/licenses/ for more information.

=cut

