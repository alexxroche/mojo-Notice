use Mojolicious;
$self->plugin('I18N2');

%languages 'de';
%=l 'hello'

# Mojolicious::Lite (detect language from URL, i.e. /en/ or /de/)
plugin I18N2 => {namespace => 'MyApp::I18N', support_url_langs => [qw(en de)]};

%=l 'hello'
%= url_for

# Lexicon
package MyApp::I18N::de;
use Mojo::Base 'MyApp::I18N';

our %Lexicon = (hello => 'hallo');

# True example

plugin I18N2 => {namespace => 'MyApp::I18N', default => 'ru', support_url_langs => [qw(en de)]};

# GET / or /ru or /en or /en-us
get '/' => 'index';

# index.html.ep
%=l 'hello'
%= languages
%= url_for

# MyApp/I18N.pm
package MyApp::I18N;
use base 'Locale::Maketext';

package MyApp::I18N::ru;
use Mojo::Base 'MyApp::I18N';

our %Lexicon = (hello => 'Привет', hello2 => 'Привет два');

package MyApp::I18N::en;
use Mojo::Base 'MyApp::I18N';

our %Lexicon = (_AUTO => 1, hello2 => 'Hello two');

package MyApp::I18N::en_us;
use Mojo::Base 'MyApp::I18N';

our %Lexicon = (_AUTO => 1, hello2 => 'Hello two US');

1;
