use perl_job::perl_jobImpl;

use perl_job::perl_jobServer;
use Plack::Middleware::CrossOrigin;



my @dispatch;

{
    my $obj = perl_job::perl_jobImpl->new;
    push(@dispatch, 'perl_job' => $obj);
}


my $server = perl_job::perl_jobServer->new(instance_dispatch => { @dispatch },
				allow_get => 0,
			       );

my $handler = sub { $server->handle_input(@_) };

$handler = Plack::Middleware::CrossOrigin->wrap( $handler, origins => "*", headers => "*");
