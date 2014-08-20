require 'memoizable'
require 'eventbrite/enumerable'

module Eventbrite
  module Legacy
    class Subusers
      include Eventbrite::Enumerable
      include Memoizable

      def initialize(collection)
        @collection = Array(collection).collect do |object|
          Eventbrite::Legacy::Subuser.new(object[:subuser])
        end
      end
    end
  end
end