require 'eventbrite-legacy/legacy/rest/users'
require 'eventbrite-legacy/legacy/rest/events'

module Eventbrite
  module Legacy
    module REST
      module API
        ENDPOINT_V1 = 'https://www.eventbrite.com'

        include Eventbrite::Legacy::REST::Users
        include Eventbrite::Legacy::REST::Events

      private
        def connection_v1
          @connection_v1 ||= Faraday.new(ENDPOINT_V1, connection_options)
        end
      end
    end
  end
end
