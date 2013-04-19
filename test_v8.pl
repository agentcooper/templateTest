use strict;
use warnings;

use JSON::XS;
use Benchmark;
use Time::HiRes;

use JavaScript::V8;
use HTML::Template::Pro;

use data;

my $ctx1 = JavaScript::V8::Context->new();
my $ctx2 = JavaScript::V8::Context->new();

my $json = JSON::XS::encode_json($data::basic);

# load javascript

open FH, 'lib/mustache.js';
read FH, my $buffer1, -s 'lib/mustache.js';
close FH;

open FH, 'lib/hogan-2.0.0.js';
read FH, my $buffer2, -s 'lib/hogan-2.0.0.js';
close FH;

# load templates

open FH, 'tmpl/mustache/main.tmpl';
read FH, my $mustacheMain, -s 'tmpl/mustache/main.tmpl';
close FH;
$mustacheMain =~ s/^\s+|\s+$//g; # trim

open FH, 'tmpl/mustache/person.tmpl';
read FH, my $mustachePerson, -s 'tmpl/mustache/person.tmpl';
close FH;
$mustachePerson =~ s/^\s+|\s+$//g; # trim

# setup

$ctx1->eval($buffer1);
$ctx2->eval($buffer2);

my $template = HTML::Template::Pro->new(
  filename => 'tmpl/perl/main.tmpl',
  die_on_bad_params => 0
);
$template->param($data::basic);

$ctx1->eval(qq{
    Mustache.compilePartial('person', '$mustachePerson');
    var main = Mustache.compile('$mustacheMain');
});

$ctx2->eval(qq{
    var person = Hogan.compile('$mustachePerson');
    var main = Hogan.compile('$mustacheMain');
});

# print $ctx1->eval(qq{
#             main($json);
#         });

# print $ctx2->eval(qq{
#             main.render($json, {person: person});
#         });

# exit 0;

Benchmark::cmpthese(1000, {
    js_mustache => sub {
        $ctx1->eval(qq{
            main($json);
        });
    },

    js_hogan => sub {
        $ctx2->eval(qq{
            main.render($json, {person: person});
        });
    },

    html_template_pro => sub {
        my $tr = $template->output;
    }
});
