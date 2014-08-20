require 'eventbrite-legacy/legacy/base'
require 'eventbrite-legacy/legacy/changeable'
require 'eventbrite-legacy/legacy/creatable'

module Eventbrite
  module Legacy
    class User < Eventbrite::Legacy::Base
      include Equalizer.new(:user_id)
      include Eventbrite::Legacy::Creatable
      include Eventbrite::Legacy::Changeable

      attr_reader :user_id, :first_name, :last_name, :email
      object_attr_reader :Subusers, :subusers

      def initialize(attrs = {})
        attrs.fetch(:user_id)
        super
      end
    end
  end
end