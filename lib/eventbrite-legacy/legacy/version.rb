module Eventbrite
  module Legacy
    class Version
      MAJOR = 0
      MINOR = 1
      PATCH = 0
      PRE = nil

      class << self
        # @return [String]
        def to_s
          [MAJOR, MINOR, PATCH, PRE].compact.join('.')
        end
      end
    end
  end
end