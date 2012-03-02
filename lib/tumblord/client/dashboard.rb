module Tumblord
  class Client
    module Dashboard

      # Retrieve the dashboard that matches the OAuth credentials submitted with the request.
      # @see http://www.tumblr.com/docs/en/api/v2#user-methods
      # @authentication OAuth
      # @return [Tumblord::Dashboard]
      # @raise [Tumblord::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      def dashboard
        dashboard = get("/v2/user/dashboard")
        # Tumblord::Dashboard(dashboard)
      end
    end
  end
end