module Tumblord
  class Client

    require 'tumblord/client/dashboard'
    include Tumblord::Client::Dashboard

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