require 'eventbrite-legacy/legacy/base'

module Eventbrite
  module Legacy
    class Process < Eventbrite::Legacy::Identity
      attr_reader :message, :status
    end
  end
end