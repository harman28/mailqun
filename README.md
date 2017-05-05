e# Mailqun

Mailgun's website is stupid, so this script lets you query events from commandline.

### Usage
Copy the `mailqun` file to some place that's in your `$PATH`. Set the following env variables:
``` sh
MAILGUN_DOMAIN=domain.com
MAILGUN_SECRET=key-lalala.domain.secret
```

And now:
``` sh
$> mailqun -h
Usage: mailqun [options]

Common options:
    -f, --from [FROM]                Address of the sender
    -t, --to [TO]                    Address of the receiver
    -s, --subject [SUBJECT]          Subject of mail
    -l, --limit [LIMIT]              Limit on number of results
        --tags [TAG]                 Value in X-Mailgun-Tag header
    -e, --event [EVENT]              Event being queried

Bounce options:
        --bounces                    Add this option to query bounces instead of events
    -a, --address [ADDRESS]          Bounced address, used with --bounces
        --delete [ADDRESS]           Delete address from bounces, used with --bounces

View options:
        --view-body [URL]            Mailgun storage URL to fetch email body from
```

### Examples:
Fetch one delivery event for a mail addressed to `harman28@gmail.com` with the word 'potato' in the subject
``` sh
$> mailqun --to harman28@gmail.com --event delivered --subject potato --limit 1
```

Fetch ten acceptance events for mails sent by `care@domain.com` with the tag 'cool'
``` sh
$> mailqun -f care@domain.com -e accepted --tags cool --limit 10
```

Check if `lololol@wut.com` is on the bounce list
```sh
$> mailqun --bounces -l 2 -a lololol@wut.com
```

View body of email stored in some Mailgun url
```sh
$> mailqun --view-body "https://sw.api.mailgun.net/v3/domains/domain.com/messages/uglyhash"
# => Saves mail in a .html file and opens using default program
```

## Contributing

I am aware that this script is a mess. It was born as a result of frustration arising from seeing Mailgun's "Don't get angry" page a few times too many. I would welcome improvements, both features and design changes. Bug reports and pull requests are welcome on [the GitHub repo](https://github.com/harman28/mailqun).
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
