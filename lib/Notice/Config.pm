package Notice::Config;

# taken from/usr/local/share/perl/5.10.0/CGI/Application/Plugin/ConfigAuto.pm
use base 'Exporter';
use Carp;
use strict;
use Config::Auto;

our @EXPORT_OK = qw(
    cfg_file
    cfg
);

## For compliance with CGI::App::Standard::Config
## we break the rule and export config and std_config by default. 
#sub import {
#  my $app = caller;
#  no strict 'refs';
#  my $full_name = $app . '::config';
#  *$full_name = \&cfg;
#
#  my $std_config_name = $app.'::std_config';
#  *$std_config_name = \&std_config;
#  CGI::Application::Plugin::ConfigAuto->export_to_level(1,@_);
#}


our $VERSION = '0.01';

## required by C::A::Standard::Config;
#sub std_config { return 1; }

=head3 cfg

Enabeling access of the config file in an OO way

=cut

sub cfg {
    my $self = shift;

    if (!$self->{__CFG}) {
        require Config::Auto;

         unless ($self->{__CFG_FILES}) {
             my @all_cfg_files;
             for my $key (qw/cfg_file config_files/) {
                 my $cfg_file = $self->param($key);
                 if (defined $cfg_file) {
                     push @all_cfg_files, @$cfg_file  if (ref $cfg_file eq 'ARRAY');
                     push @all_cfg_files,  $cfg_file  if (ref \$cfg_file eq 'SCALAR');
                 }
             }

             # Non-standard call syntax for mix-in happiness.
             cfg_file($self,@all_cfg_files);
         }

        # Read in config files in the order the appear in this array.
        my %combined_cfg;
        for (my $i = 0; $i < scalar @{ $self->{__CFG_FILES} }; $i++) {
            my $file = $self->{__CFG_FILES}[$i];
            my %parms;
            if (ref $self->{__CFG_FILES}[$i+1] eq 'HASH') {
                %parms = %{ $self->{__CFG_FILES}[$i+1] };
                # skip trying to process the hashref as a file name
                $i++;
            }
            my $cfg = Config::Auto::parse($file, %parms);
            %combined_cfg = (%combined_cfg, %$cfg);
        }
        die "No configuration found. Check your config file(s) (check the syntax if this is a perl format)."
            unless keys %combined_cfg;

        $self->{__CFG} = \%combined_cfg;
    }

    my $cfg = $self->{__CFG};
    my $field = shift;
    return $cfg->{$field} if $field;
    if (ref $cfg) {
        return wantarray ? %$cfg : $cfg;
    }
}

=head2 cfg_file()

 # Usual
 $self->cfg_file('my_config_file.pl');
    
 # Supply the first format, guess the second
 $self->cfg_file('my_config_file.pl',{ format => 'perl' } );

Supply an array of config files, and they will be processed in order.  If a
hash reference if found it, will be used to supply the format for the previous
file in the array.

=cut

sub cfg_file {
    my $self = shift;
    my @cfg_files = @_;
    unless (scalar @cfg_files) { croak "cfg_file: must have at least one config file." }
    $self->{__CFG_FILES} = \@cfg_files;
}


1;
