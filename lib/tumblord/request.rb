module Tumblord
  module Request
    # Perform an HTTP GET request
    def get(path, params={})
      request(:get, path, params)
    end

  private

    # Perform a HTTP request
    def request(method, path, params={})
      response = connection.get(path, params)
      response.body
    end
  end
end