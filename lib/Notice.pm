package Notice;
use Mojo::Base 'Mojolicious';

use lib 'lib'; #only needed so that perl -cw lib/Notice.pm works

our $VERSION = 0.01;
our %opt=('D'=>1);

BEGIN {
    unshift @INC, '../', '.';
    use Exporter;
    my @ISA=('Exporter','Notice');
    my @EXPORT=();
    my @EXPORT_OK = qw( \&cgiapp_init );
};


=head1 NAME

mojo-Notice - Dispatcher and base class for the mojolicious mojo-Notice

=cut

=head1 SYNOPSIS

A controller module for mojo-Notice.
This is just an example of some of the things that can be done with mojolicious.
[ This is mostly a direct port from Notice (my CGI::Application based module)
DBIx::Class is not fully intergrated yet (
    ref: https://gist.github.com/1025760;http://toroid.org/ams/etc/mojolicious-db-handles
    http://groups.google.com/group/mojolicious/browse_thread/thread/baa3ab8c40a50c5d/82b04235eeb96b5c
)
Then the plan is to splice in my i18n code from public/examples/i18n (which uses Template::Toolkit)

(https://github.com/kraih/mojo/wiki/Routes-for-non-lite-apps)

Each of these (ConfigAuto, DBIC, TT) are just possible variations.

=head1 DESCRIPTION

This module acts as the base class for Controllers for this app. Subclasses are found
in the Notice package.

=head1 METHODS

=head2 SUBCLASSED METHODS

=head3 startup

Initializes the Controller base class for app, configures DBIx::Class plugin,
sets an error mode and configures the TT template directory.
(well maybe it will when I get to that stage)

N.B. # This method will run once at server start

=cut


sub startup {
  my $self = shift;
  $self->secret('not');

 #Authentication helper
  use Notice::Auth;
  my $users = Notice::Auth->new;
  $self->helper(users => sub { return $users });
 #Maybe they are already authenticated
  my $user = $self->session('user');
 
 #CFG
  use Config::Auto;
  # or if you are not porting a Config::Auto config you could use Mojolicious::Plugin::Config
  my $conf_file = 'notice.config';
  unless($ENV{'THIS_IS_CGI'}){ $conf_file = 'script/' . $conf_file; } #probably a better way to do this
  my $cs = Config::Auto::parse($conf_file, format => "perl");
  my %cfg = (%$cs);  # if you need it or...
  $self->helper(cfg => sub { return $cs }); #this might be more helpful
  #$self->helper(cfg => sub { return %cfg }); #this might be more helpful
   

 # Documentation browser under "/perldoc"
  #$self->plugin('PODRenderer');

 # Routes - this is the dispatcher for this module.
  my $r = $self->routes;
   $r->namespace('Notice::C'); # keeping the C of MVC for Controllers 

    # If you are thinking, "Why not just:"
  #$r->any('*')->to('example#welcome', message=> "You are $user") unless $self->session('user');
    # this does not work because startup is only accessed once 'at startup' rather than dealing with each session
    # This is why $self->req does not exist here in Notice::startup 

   # favicon.ico and robots.txt
$r->get('/favicon.ico')->to( sub {
    my $self = shift;
    $self->render_static('favicon.ico');
    $self->res->headers->content_type('application/x-octet-stream');
    $self->res->headers->content_disposition("attachement; filename = favicon.ico");
    $self->rendered;
});
$r->get('/robots.txt')->to( sub {
    my $self = shift;
    $self->render_static('robots.txt');
    $self->rendered;
});

  # Special hard-coded routes (we would like to get rid of these if we can)
  $r->route('/welcome')->to('example#welcome');
  $r->get('/protected')->to('login#protected')->name('protected');
  $r->get('/logout')->to('login#logout')->name('logout');

  # Normal route to controller (taking into account i18n)

    # e.g. http://localhost:3000/en_GB/assets
  $r->route('/:lang/:controller', lang => qr/\w\w[_-]?\w?\w?/) # we /really/ want lang => qr/(\w\w([_-]?\w\w)?)/
   # ->via('get') #this is an option
    ->to(controller => 'login', action => 'main');
  $r->route('/:lang/:controller/:action', lang => qr/\w\w[_-]?\w?\w?/)
    ->to(controller => 'login', action => 'main');
    # e.g. http://[::1]:3000/en_GB/assets/list/10
  $r->route('/:lang/:controller/:action/:id', lang => qr/\w\w[_-]?\w?\w?/)
    ->to(controller => 'login', action => 'main', id => '');

    # e.g. http://127.0.0.1:3000/en_GB/assets/list/10/add/this/and/anything/else-I_think_you_get_the_idea
  $r->route('/:lang/:controller/:action/:id/*', lang => qr/\w\w[_-]?\w?\w?/)
    ->to(controller => 'login', action => 'main', id => '', cid => '');

  # Normal route to controller (using user/browser lang)
  $r->route('/:controller')->to(controller => 'login', action => 'main');
    # it seems that controller names can be stacked in any order
  #$r->route('/:controller')->name('nolangctrl')->to(controller => 'login', action => 'main');
  #$r->route('/:controller')->to(controller => 'login', action => 'main')->name('nolangctrl');
  $r->route('/:controller/:action')->to(controller => 'main', action => 'main');
  $r->route('/:controller/:action')->to(controller => 'main', action => 'main');
  $r->route('/:controller/:action/:id')->to(controller => 'main', action => 'main', id => '');
  $r->route('/:controller/:action/:id/*cid')->to(controller => 'main', action => 'main', id => '', cid=>'');
  # you /could/ have fixed routes to controllers if you _have_ to.
  #$r->get('/main')->to('main#main')->name('main');
  #$r->get('/people')->to('people#main')->name('people');

 # a catch-all
  $r->any('/')->to('main#main')->name('main');

}
  
  
=head3 cgiapp_init

This sets up some global data that we might need from all over Notice::

=cut


sub cgiapp_init { 
  my $self = shift;
  my %cfg = $self->cfg;

  use Data::Dumper;
  #$opt{debug} = Dumper(%cfg);
  $opt{debug} = Dumper($self->cfg);
  #no strict 'refs';
  #foreach my $k (keys %{$self->cfg} ){
  #  $opt{debug} .= "$k = " . $self->cfg->{"$k"} ."<br />\n";
    #$opt{debug} .= "$k = "; $opt{debug} .= $self->cfg->{"$k"}; $opt{debug} .= "<br />\n";
  #}
  $self->param(url_path => $opt{debug});

  # connect to the database
  use Notice::DB;
  return if $ENV{_}=~m/prove/;
   my $dbh = Notice::DB->connect(
        $self->cfg->{"db_dsn"},
        $self->cfg->{"db_user"},
        $self->cfg->{"db_pw"},
        { AutoCommit => 1 }
      );

  # check if they are logged in and collect their people.pe_menu from the database
        # so that we can build the side-menu
   my $username = $self->session('user');
  my $rs = $dbh->resultset('People')->search({
        #'pe_uname' => { '=', $self->param('username')},
        'pe_email' => { 'LIKE', $username},
     },{
        columns => ['pe_id','pe_acid','pe_fname','pe_lname','pe_menu']
     });
  while( my $ud = $rs->next){
        my $pe_id = $ud->pe_id; #later, for the admin we will have to have effective_peid as we do with ef_acid
        my $ef_acid = $ud->pe_acid;
        my $pe_menu = $ud->pe_menu;
        #$ac_tree = $ud->ac_tree;
        #$self->param(ac_tree => $ac_tree);
        #$self->session->param(ac_tree => $ac_tree);
        $self->stash(ef_acid => $ef_acid);
        $self->stash(pe_menu => $pe_menu);
        my $known_as = $ud->pe_fname . ' ' . $ud->pe_lname;
        $self->stash(known_as => $known_as);
        $self->stash(pe_id => $pe_id);
        if($ef_acid=~m/^\d+$/){
           # $self->session->param(ef_acid => $ef_acid);
           $self->session(ef_acid => $ef_acid);
        }else{
            $self->session(ef_acid => 'Account not found');
        }
        #$self->session(known_as => $known_as); # because we are using cookies for sessions rather than the database
                                                # we may not have space for this.
                                    # NOTE you could try porting CGI::Application::Plugin::Session as we have a databasee
    }

    


    # If running as CGI we need to prepend each href url
  my ($url_path,$url_rm,$rm_path);
  if($self->req->env->{'SCRIPT_NAME'}){
    $url_rm = $self->req->env->{'PATH_INFO'};
    $url_path = $self->req->env->{'SCRIPT_NAME'} . "/";
    unless($url_path=~m/index.cgi/){ $url_path = 'index.cgi' . $url_path; }
  }else{
    $url_rm = $self->url_for('current');
  }
  $rm_path = $url_path;
  if($url_rm){ $rm_path .= $url_rm .'/'; }
  $self->stash(url_path => $url_path);
  $self->stash(url_rm => $url_rm);
  $self->stash(rm_path => $rm_path);

  my ($user,$remote_addr,$title); 
  $title = 'Notice CRaAM '; #NOTE pull from DB conf->conf_data.cfd_name
  if(keys %{$self->session}){
      $user = $self->stash('known_as') || $self->session('user');
      my $rm = 'main';
    
      if($self->req){
          $rm = $self->req->url->path();
          $remote_addr = $self->req->env->{'REMOTE_ADDR'} || '"No place like" ::1';
      }elsif($self->url_for){
          $rm = $self->url_for('current');
      }else{
          $rm = $self->param('rm') || 'Main';
          $remote_addr = 'possibly localhost';
      }

      $title .= $rm . ' - ' . $user .' AT '. $remote_addr;
  }
  $self->stash(title => $title);

return;
}

1;

__END__

=head1 BUGS AND LIMITATIONS

Probably, and certainly better ways to do the same thing

Please report any bugs or feature requests to
C<bug-mojo-notice at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=mojo-notice>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SEE ALSO

L<Mojolicious>, L<DBIx::Class>, L<Notice>

=head1 AUTHOR

Alexx Roche, C<< notice-dev@alexx.net >>

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2011 Alexx Roche

This program is free software; you can redistribute it and/or modify it
under the following license: Eclipse Public License, Version 1.0 ; 
or the Artistic License.

See http://www.opensource.org/licenses/ for more information.

=cut

