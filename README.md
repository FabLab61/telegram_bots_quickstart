# How to run

```
sh installdeps.sh
morbo server.pl
```

Don't forget to paste your own token at server.pl

```perl
my $api = WWW::Telegram::BotAPI->new (
    token => 'your_own_token'
);
```

You can get own token from [BotFather](https://telegram.me/BotFather)