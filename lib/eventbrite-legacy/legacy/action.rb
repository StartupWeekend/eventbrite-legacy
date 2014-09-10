module Eventbrite
  module Legacy
    class Action < Hashie::Mash
      def success?
        status == "OK"
      end
    end
  end
end