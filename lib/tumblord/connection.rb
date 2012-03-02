require 'faraday'
require 'tumblord/request/oauth'
require 'tumblord/response/parse_json'

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
      
      @connection ||= Faraday.new(default_options) do |builder|
        builder.use Faraday::Response::Logger
        builder.use Tumblord::Request::TumblrOAuth, credentials if credentials?
        builder.use Tumblord::Response::ParseJson
        builder.adapter  :net_http
      end
    end
    
  end
  
end