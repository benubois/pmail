pmail
=====

pmail, send mail using [Postmark](http://postmarkapp.com/) from the command line.  

Usage
-----

Install by running

    $ gem install pmail

pmail will look for a YAML file located in ~/.pmail which can be used to specify any of the parameters that pmail takes.

This is most useful for specifying your Postmark API key and sender signature. For example:

    ---
    :api_key: XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
    :from: Ben Ubois <ben@benubois.com>

Examples
--------

    $ pmail -t ben@benubois.com -s Subject < message_body.txt
