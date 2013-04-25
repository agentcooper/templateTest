#!/usr/bin/perl -l

use strict;
use warnings;

use JSON::XS;
use Benchmark;
use Time::HiRes;
use JavaScript::V8;
use Proc::ProcessTable;

sub memory_usage() {
    my $t = new Proc::ProcessTable;

    foreach my $got (@{$t->table}) {
        next unless $got->pid eq $$;
        return $got->rss;
    }
}

use data;

print "Perl memory size before ctx create: " . memory_usage();

my $ctx1 = JavaScript::V8::Context->new();

print "Perl memory size after ctx create: " . memory_usage();

my $json = JSON::XS::encode_json($data::basic);

# load javascript

open FH, 'lib/hogan-2.0.0.js';
read FH, my $buffer1, -s 'lib/hogan-2.0.0.js';
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

$ctx1->eval(qq{
    $buffer1
    var person = Hogan.compile('$mustachePerson');
    var main = Hogan.compile('$mustacheMain');
});

# print $ctx1->eval(qq{
#     main.render($json, {person: person});
# });

# exit 0;

print "Perl memory size after templater init: " . memory_usage();

foreach (1..10000) {
    $ctx1->eval(qq{
        main.render($json, {person: person});
    });
}

print "Perl memory size after test: " . memory_usage();
