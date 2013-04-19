Test 1
============

Plain old perl templating.

1. Get HTML::Template http://search.cpan.org/~wonko/HTML-Template-2.94/lib/HTML/Template.pm
2. ```perl test_html_template.pl```

```
Execution time: 0.0082809925 s
```

Test 2
============

Node.js is doing templating using Hogan.js (Mustache), exchanging data with perl client via tcp.

1. Get node.js
2. `npm install hogan.js`
3. Start node templating server `node node/server.js`
4. Run perl client `perl node/client.pl`

```
Execution time: 0.0068559647 s, trip time: 0.0056278706 s
```

server.js: `templating: 2ms`

Test 3
============

1. Get [JavaScript::V8](http://search.cpan.org/~dgl/JavaScript-V8-0.07/lib/JavaScript/V8.pm)
2. `perl test_v8.pl`

```
                    Rate html_template_pro       js_mustache          js_hogan
html_template_pro  273/s                --              -68%              -85%
js_mustache        847/s              210%                --              -54%
js_hogan          1852/s              578%              119%                --
```

`V8 version 3.9.24`
`Perl 5.12`
