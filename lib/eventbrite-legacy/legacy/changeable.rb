require 'time'
require 'memoizable'

module Eventbrite
  module Legacy
    module Changeable
      include Memoizable

      # Time when the object was updated on Eventbrite
      #
      # @return [Time]
      def changed
        Time.parse(@attrs[:date_modified]) unless @attrs[:date_modified].nil?
      end
      memoize :changed

      # @return [Boolean]
      def changed?
        !!@attrs[:date_modified]
      end
      memoize :changed?
    end
  end
end
