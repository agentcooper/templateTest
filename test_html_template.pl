use Time::HiRes qw(time);
use HTML::Template;

use data;

my $template = HTML::Template->new(
  filename => 'tmpl/perl/main.tmpl',
  die_on_bad_params => 0
);

$t0 = time;

# for ($count = 0; $count <= 10000; $count++) {
  $template->param($data::basic);
  print $template->output;
# }

$duration = time - $t0;

printf("\nExecution time: %.10f s\n", $duration);
