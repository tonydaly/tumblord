require 'tumblord/client'
require 'tumblord/config'

module Tumblord
  extend Config
  class << self
    # Alias for Tumblord::Client.new
    #
    # @return [Tumblord::Client]
    def new(options={})
      Tumblord::Client.new(options)
    end

    # Delegate to Tumblord::Client
    def method_missing(method, *args, &block)
      new.send(method, *args, &block)
    end
  end
end
