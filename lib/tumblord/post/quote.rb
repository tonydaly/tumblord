require "tumblord/client"

module Tumblord
  class Quote < Tumblord::Post
    lazy_attr_reader :text, :source  
  end
end