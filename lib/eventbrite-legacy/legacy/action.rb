module Eventbrite
  module Legacy
    class Action < Hashie::Mash
      # :status, :message, :id, :method
      def id
        fetch("id").to_s
      end

      def success?
        status == "OK"
      end
    end
  end
end