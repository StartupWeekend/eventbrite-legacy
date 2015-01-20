require 'eventbrite/rest/utils'
require 'eventbrite-legacy/legacy/request'

module Eventbrite
  module Legacy
    module REST
      module Utils
        include Eventbrite::REST::Utils

        # @param request_method [Symbol]
        # @param version [Symbol]
        # @param path [String]
        # @param options [Hash]
        # @param container [String]
        # @param klass [Class]
        def perform_with_nested_object (request_method, version, path, options, container, klass)
          request = Eventbrite::Legacy::Request.new(self, request_method, version, path, container, options)
          request.perform_with_object(klass)
        end

        # @param request_method [Symbol]
        # @param version [Symbol]
        # @param path [String]
        # @param options [Hash]
        # @param klass [Class]
        def perform_with_nested_cursor (request_method, version, path, options, container, collection_name, klass = nil) # rubocop:disable ParameterLists
          merge_default_cursor!(options)
          request = Eventbrite::Legacy::Request.new(self, request_method, version, path, container, options)
          request.perform_with_cursor(collection_name.to_sym, klass)
        end
      end
    end
  end
end