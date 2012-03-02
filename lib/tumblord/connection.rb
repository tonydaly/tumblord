require 'faraday'

module Tumblord
  module Connection

  private

    # Returns a Faraday::Connection object
    #
    # @param options [Hash] A hash of options
    # @return [Faraday::Connection]
    def connection(options={})
      default_options = {
        :headers => {
          :accept => 'application/json',
          :user_agent => user_agent,
        },
        :url => options.fetch(:endpoint, endpoint),
      }
      p user_agent
      p endpoint
      @connection ||= Faraday.new(default_options) do |builder|
        builder.use Faraday::Response::Logger
        builder.use Tumblord::Request::TumblrOAuth, credentials if credentials?
        builder.adapter  :net_http
      end
    end
    
  end
  
end