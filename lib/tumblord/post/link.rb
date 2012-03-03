require "tumblord/client"

module Tumblord
  class Link < Tumblord::Post
    lazy_attr_reader :title, :url, :description  
  end
end