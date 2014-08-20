require 'equalizer'
require 'eventbrite-legacy/legacy/base'

module Eventbrite
  module Legacy
    class Identity < Eventbrite::Legacy::Base
      include Equalizer.new(:id)
      attr_reader :id

      # Initializes a new object
      #
      # @param attrs [Hash]
      # @raise [ArgumentError] Error raised when supplied argument is missing an :id key.
      # @return [Twitter::Identity]
      def initialize(attrs = {})
        attrs.fetch(:id)
        super
      end
    end
  end
end