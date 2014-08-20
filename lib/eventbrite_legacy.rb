require 'eventbrite-legacy/legacy'

# Loads Legacy API to Client
Eventbrite::REST::Client.send(:include, Eventbrite::Legacy::REST::API)