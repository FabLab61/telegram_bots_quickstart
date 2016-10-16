# Server which simply log Update object into log

use WWW::Telegram::BotAPI;
use Mojolicious::Lite;
use Telegram::Polling qw(get_last_messages);
use Data::Dumper; # for debug

my $api = WWW::Telegram::BotAPI->new (
    token => '271743448:AAFd95x0zgZMRmgkCTO7J9xkDWKmdxVRvQw'
);

Mojo::IOLoop->recurring(1 => sub {
	my $hash = get_last_messages($api);
	while ( my ($chat_id, $update) = each(%$hash) ) {   # Answer to all connected clients
	app->log->info("Update object:".Dumper $update);
	app->log->info($update->{message}{text}." from chat_id: ".$chat_id." (".$update->{message}{from}{first_name}." ".$update->{message}{from}{last_name}.")");
	}
});

app->start;