# Tumblord

A Ruby wrapper for the Tumblr V2 API. Modelled on the [twitter gem](https://github.com/jnunemaker/twitter)

## Usage

Require:

    require 'tumblord'

## Configuration

There are different levels of authentication for the API. 

* None: `avatar`
* API Key (OAuth Consumer Key): `info` and `posts`
* OAuth: everything else

    Tumblord.configure do |config|
      config.consumer_key = YOUR_CONSUMER_KEY
      config.consumer_secret = YOUR_CONSUMER_SECRET
      config.oauth_token = YOUR_OAUTH_TOKEN
      config.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
    end

## Getting started

Methods are either blog methods or user methods.

### Dashboard

    /user/dashboard – Retrieve a User's Dashboard

    Tumblord.dashboard => Tumblord::Dashboard