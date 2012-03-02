require 'tumblord/authenticatable'
require 'tumblord/config'
require "tumblord/connection"
require "tumblord/post"
require "tumblord/request"

module Tumblord
  class Client
    include Tumblord::Authenticatable
    include Tumblord::Connection
    include Tumblord::Request

    require 'tumblord/client/dashboard'
    include Tumblord::Client::Dashboard

    attr_accessor *Config::VALID_OPTIONS_KEYS

    # Initializes a new API object
    #
    # @param attrs [Hash]
    # @return [Tumblord::Client]
    def initialize(attrs={})
      attrs = Tumblord.options.merge(attrs)

      Config::VALID_OPTIONS_KEYS.each do |key|
        instance_variable_set("@#{key}".to_sym, attrs[key])
      end
    end
    
  end
end