#!/usr/bin/perl

use Mojolicious::Lite;
get '/' => 'index';
get '/ajax' => sub {
    my $self = shift;
    my $header = $self->req->headers->header('X-Requested-With');
    # AJAX request
    if ($header && $header eq 'XMLHttpRequest') {
        $self->render_json({answer => "Hello from AJAX!"});
    }
    # Normal request
    else {
        $self->render(answer => 'Hello from Mojolicious!');
    }
} => 'index';

shagadelic('daemon');

__DATA__

@@ index.html.ep
<html>
    <head>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                // Replace .no-ajax class with .ajax to get dashed borders
                $(".no-ajax").removeClass("no-ajax").addClass("ajax");

                // Tie onclick action to all .ajax links
                $("a.ajax").click(function() {
                    var link = this;

                    // Save href for future restore
                    var href = $(link).attr("href");

                    // Replace href with '#'
                    $(link).attr("href", "#");

                    // Do actual AJAX
                    $.getJSON(href, function(json) {

                        // Restore href
                        $(link).attr("href", href);

                        // Check JSON response
                        if (json.answer) {
                            $("#answer").text(json.answer);
                        }
                        else {
                            $("#answer").text("Error");
                        }
                    })
                });
            });
        </script>
        <style>
            a.ajax {
                text-decoration: none;
                border-bottom: 1px dashed;
            }
            a.ajax:hover {
                text-decoration: none;
                border-bottom: 1px dashed;
            }
        </style>
    </head>
    <body>
        <a href="/ajax" class="no-ajax">Say Hello</a>
        <div id="answer"><%= stash('answer') %></div>
    </body>
</html>
