# Tweetrb

Simple Twitter CLI client for learning basics of Ruby. See current state for
the defails. We will continue with demo next Wendsday.

## Configuration

The config file goes to `~/.tweetrb/config.yml` and looks like this:

```
key: consumer_key
key_secret: consumer key secret
access_token: access token
access_token_secret: access token secret
bitly_account: yrbitlyacnt
bitly_password: pwd
```

## Usage

* Show timeline

```
tweeterb -l [-c COUNT]
```

* Tweet something

```
tweetrb -t "I'm sending this tweet with tweetrb"
```

* Shorten links

```
tweetrb -t "The link http://www.github.com/municz/study-materials/wiki will be shortened"
```

* Retweet

```
tweetrb -r [HASH] [-f filter]
# if filter not specified or too general, you will be asked for more
# specific one. Use any word that the tweet contains.
```

## Running tests

```
ruby test/parse_options_test.rb
```

## Current state

* basic scructure
* parsing options basics
* executable script

```
bin/tweetrb -l -c 10
# prints the parsed options
```

## TODO

* default values for options
* load settings
* connect to Twitter
* parse results
* display tweets
* send tweet
* shorten links
* retweet
