module Eventbrite
  module Legacy
    class Event < Hashie::Mash
      def success?
        !blank?
      end
    end
  end
end