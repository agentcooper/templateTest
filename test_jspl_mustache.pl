use Time::HiRes qw(time);
use JSPL;

use data;

my $ctx = JSPL::Runtime->new->create_context();

$ctx->{RaiseExceptions} = 0;
$ctx->{ConstantsValue} = 0;

$ctx->eval_file('./lib/mustache.js');

# load templates

my $mainTemplate;
open(my $fh, '<', './tmpl/mustache/main.tmpl') or die "cannot open file $filename";
{
  local $/;
  $mainTemplate = <$fh>;
}
close($fh);

# run

$t0 = time;

print $ctx->call('render' => $mainTemplate, $data::basic);

my $duration = time - $t0;
printf("\nExecution time: %.10f s\n", $duration);
