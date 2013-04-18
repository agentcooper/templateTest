use IO::Socket;
use JSON;
use Time::HiRes qw(time);

use data;

$t0 = time;

$socket = IO::Socket::INET->new(PeerAddr => "localhost",
                                PeerPort => 8124,
                                Proto    => "tcp",
                                Type     => SOCK_STREAM)
    or die "Couldn't connect to $remote_host:$remote_port : $@\n";

$t1 = time;
print $socket encode_json($data::basic);

while ($answer=<$socket>)
{
    print "$answer";
}
my $trip = time - $t1;

close($socket);

my $duration = time - $t0;
printf("\nExecution time: %.10f s, trip time: %.10f s\n", $duration, $trip);
