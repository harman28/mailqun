# Mailqun

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
    -f, --from [FROM]
    -t, --to [TO]
    -s, --subject [SUBJECT]
    -l, --limit [LIMIT]
        --tags [TAG]
    -e, --event [EVENT]
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

## Todo
 - ~Query bounces as well~