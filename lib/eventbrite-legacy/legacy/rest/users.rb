require 'eventbrite-legacy/legacy/rest/utils'
require 'eventbrite-legacy/legacy/user'

module Eventbrite
  module Legacy
    module REST
      module Users
        include Eventbrite::Legacy::REST::Utils

        def user_get(user = nil, options = {})
          if user
            options[:id] = extract_user_id(user)
          end

          perform_with_nested_object(:get, :v1, "/json/user_get/", options, :user, Eventbrite::Legacy::User)
        end
      end
    end
  end
end
