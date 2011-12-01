package Hello;
use strict;
use warnings;

use base 'Mojolicious';
use Mojolicious::Plugin::TtRenderer;

sub startup {
    my ($self) = @_;
    $self->secret('wearethesevenjudgementofheavenwhydontweknowwearetheangels');
    $self->plugin(tt_renderer => {
                    template_options => {
                        INCLUDE_PATH => 'templates/',
                        WRAPPER => 'wrapper.html.tt'
                        }
                    });
    $self->renderer->default_handler('tt');

    $self->routes->route('/')->to('home#index');
}

1;

