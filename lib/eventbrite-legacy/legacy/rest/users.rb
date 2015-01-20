require 'eventbrite-legacy/legacy/rest/utils'
require 'eventbrite-legacy/legacy/user'
require 'eventbrite-legacy/legacy/event'

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

        def user_new(email, password, options = {})
          options.merge!(email: email, passwd: password)

          perform_with_nested_object(:get, :v1, "/json/user_new/", options, :user, Eventbrite::Legacy::Action)
        end

        def user_list_events(options = {})
          perform_with_nested_cursor(:get, :v1, "/json/user_list_events/", options, :event, :events, Eventbrite::Legacy::Event)
        end
      end
    end
  end
end
