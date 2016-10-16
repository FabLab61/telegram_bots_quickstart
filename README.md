# How to run

```
sh installdeps.sh
morbo server.pl
```

Don't forget to paste your own token at

```
my $api = WWW::Telegram::BotAPI->new (
    token => 'your_own_token'
);
```
