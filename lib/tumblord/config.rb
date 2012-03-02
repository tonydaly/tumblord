require "tumblord/version"

module Tumblord
  module Config

    ENDPOINT = 'api.tumblr.com'
    USER_AGENT = "Tumblord Ruby Gem #{Tumblord::VERSION}"

    # An array of valid keys in the options hash when configuring a {Twitter::Client}
    VALID_OPTIONS_KEYS = [
      :consumer_key,
      :consumer_secret,
      :oauth_token,
      :oauth_token_secret
    ]

    attr_accessor *VALID_OPTIONS_KEYS

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
      self
    end
  end
end