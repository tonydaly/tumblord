require "tumblord/client"

module Tumblord
  class Text < Tumblord::Post
    lazy_attr_reader :title, :body  
  end
end