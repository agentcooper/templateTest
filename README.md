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
