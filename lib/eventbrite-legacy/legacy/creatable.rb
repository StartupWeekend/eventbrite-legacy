require 'time'
require 'memoizable'

module Eventbrite
  module Legacy
    module Creatable
      include Memoizable

      # Time when the object was created on Eventbrite
      #
      # @return [Time]
      def created
        Time.parse(@attrs[:date_created]) unless @attrs[:date_created].nil?
      end
      memoize :created

      # @return [Boolean]
      def created?
        !!@attrs[:date_created]
      end
      memoize :created?
    end
  end
end
