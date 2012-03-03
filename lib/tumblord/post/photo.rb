require "tumblord/client"

module Tumblord
  class Photo < Tumblord::Post
    lazy_attr_reader :caption, :photos
  end
end