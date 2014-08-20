require 'eventbrite-legacy/legacy/rest/utils'
require 'eventbrite-legacy/legacy/action'

module Eventbrite
  module Legacy
    module REST
      module Events
        include Eventbrite::Legacy::REST::Utils

        def event_copy(event, title, options = {})
          options[:id]    = extract_id(event)
          options[:title] = title

          perform_with_nested_object(:get, :v1, "/json/event_copy/", options, :process, Eventbrite::Legacy::Action)
        end
      end
    end
  end
end
