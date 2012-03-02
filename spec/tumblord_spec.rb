require 'spec_helper'

describe Tumblord do
  describe ".new" do
    it "should return a Tumblord::Client" do
      Tumblord.new.should be_a Tumblord::Client
    end
  end

  describe "#options" do
    describe ".endpoint" do
      it "should return the default endpoint" do
        Tumblord.endpoint.should == Tumblord::Config::ENDPOINT
      end
    end

    describe ".endpoint=" do
      it "should set the endpoint" do
        Tumblord.endpoint = 'http://tumblr.com/'
        Tumblord.endpoint.should == 'http://tumblr.com/'
      end
    end

    describe ".user_agent" do
      it "should return the default user agent" do
        Tumblord.user_agent.should == Tumblord::Config::USER_AGENT
      end
    end

    describe ".user_agent=" do
      it "should set the user_agent" do
        Tumblord.user_agent = 'Custom User Agent'
        Tumblord.user_agent.should == 'Custom User Agent'
      end
    end
  end
end