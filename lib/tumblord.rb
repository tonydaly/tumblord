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
  end
end
