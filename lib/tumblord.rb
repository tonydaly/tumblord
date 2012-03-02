require 'tumblord/client'
require 'tumblord/config'

module Tumblord
  extend Config
  class << self
    # Alias for Twitter::Client.new
    #
    # @return [Twitter::Client]
    def new(options={})
      Tumblord::Client.new(options)
    end

    # Delegate to Twitter::Client
    def method_missing(method, *args, &block)
      new.send(method, *args, &block)
    end
  end
end
