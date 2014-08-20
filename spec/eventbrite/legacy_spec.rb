require 'helper'

describe Eventbrite::Legacy do
  let(:client) { Eventbrite::REST::Client.new(oauth_token:"TOKEN") }

  describe '.user_get' do
    subject { client.user_get }

    before do
      stub_request(:get, 'https://www.eventbrite.com/json/user_get/').
        to_return(
          :body => fixture('user_get.json'),
          :headers => {:content_type => 'application/json; charset=utf-8'}
        )
    end

    it { should be_a_kind_of(Eventbrite::Legacy::User) }
    its(:first_name) { should eq('Joe') }
    its(:last_name) { should eq('Doe') }
    its(:subusers) { should be_a_kind_of(Eventbrite::Legacy::Subusers) }
  end

  describe '.event_copy' do
    subject { client.event_copy(event_id, title) }

    context 'successful request' do
      let(:title) { "New Event" }
      let(:event_id) { rand(1000) }

      before do
        stub_request(:get, 'https://www.eventbrite.com/json/event_copy/').
          with(query: { id: event_id, title: title }).
          to_return(
            :body => fixture('event_copy.json'),
            :headers => {:content_type => 'application/json; charset=utf-8'}
          )
      end

      it { should be_a_kind_of(Eventbrite::Legacy::Process) }
    end

    context 'Missing Event Name' do
      let(:title) { "" }
      let(:event_id) { rand(1000) }

      before do
        stub_request(:get, 'https://www.eventbrite.com/json/event_copy/').
          with(query: { id: event_id, title: title }).
          to_return(
            :body => fixture('error_missing_event_name.json'),
            :headers => {:content_type => 'application/json; charset=utf-8'}
          )
      end

      it { lambda{ subject }.should raise_error(Eventbrite::Error) }
    end

  end
end