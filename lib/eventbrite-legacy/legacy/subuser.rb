module Eventbrite
  module Legacy
    class Subuser < Eventbrite::Legacy::Identity
      attr_reader :email
    end
  end
end