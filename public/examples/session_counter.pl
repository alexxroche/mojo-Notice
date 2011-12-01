use Mojolicious::Lite;

get '/counter' => sub {
my $self = shift;
$self->session->{counter}++;
};

get '/' => sub {
my $self = shift;
$self->render(text => 'try <a href="/counter">this</a>');
};

app->start;
__DATA__

@@ counter.html.ep
Counter: <%= session 'counter' %>
