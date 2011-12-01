# Lexicon

package I18N::de;
use Mojo::Base 'I18N';

our %Lexicon = (
  hello => 'hallo',
  world => 'deuchland',
  "Select a Language:"         => "Poland you say....",
    'You seem to be speaking'     => 'Spekezin',
  'You could try'       => 'Uterlize',
  'index'               => 'Fatherland',
  'German'              => 'Deuche',
  'French'              => 'Frog',
  'English'             => 'Pig-dog',
  'Yank'                => 'A Merikan',
  'russian'             => 'Ze-reds',
  'Alexx'               => 'Our Fhura',

);
package I18N::en_US;
use Mojo::Base 'I18N';
our %Lexicon = (hello => 'You know,', world => 'there are more people speaking other languges than speaking yours', 'Select a Language:' => 'United under one sky');

package I18N::xx; use Mojo::Base 'I18N';
our %Lexicon = (hello => 'Welcome to a demo of', world => 'Mojolicious I18N AND TT');

package I18N::lx; use Mojo::Base 'I18N';
our %Lexicon = (hello => 'one', world => 'world', 'Select a Language:' => 'United under the sky', 'You seem to be speaking'     => 'Have you thought about peace today?',
  'You could try'       => 'Take a moment to feel your own smile wash over you',
  'index'=> '/', 'German'=> '/de', 'French'=> '/fr', 'English'=> '/en_GB', 'Yank'=> '/en', 'russian'=> '/ru', 'Alexx'=> '/lx',
);

package I18N::en_gb; use Mojo::Base 'I18N'; # does not seem to work for regions
our %Lexicon = (hello => 'Tally', world => 'Ho! en_GB', 'Select a Language:' => 'Best of british luck to you');


package I18N::fr;
use Mojo::Base 'I18N';

our %Lexicon = (
    # Automatic fallback to string ID when no translation available
    _AUTO => 1,
 
    # String IDs                  # Translations
    "hello"			=> 'Bonjour',
    "world"			=> 'tout le Monde',
    "Select a Language:"         => "Shwuzie oone applicazione:",
    "Data provider:"            => "Provider dei dati:",
    'You seem to be speaking'     => 'Je ponce tu a parlez',
  'You could try'       => 'C\'est possible de utalize',
  'index'               => 'maison',
  'German'              => 'Almonde',
  'French'              => 'Grenoowie',
  'English'             => 'Rozt-biifs',
  'Yank'                => 'Burger-eating Warmungers',
  'russian'             => 'Russian',
  'Alexx'               => 'Something else',

);


1;
