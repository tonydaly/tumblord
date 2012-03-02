require "tumblord/post/link"
require "tumblord/post/photo"
require "tumblord/post/quote"
require "tumblord/post/text"

module Tumblord
  class Dashboard

    attr_reader :posts, :offset, :total_posts

    def initialize(dashboard={})
      @posts = dashboard["response"]["posts"].collect do |post|
        case post["type"]
        when 'text'
          Tumblord::Text.new(post)
        when 'photo'
          Tumblord::Photo.new(post)
        when 'quote'
          Tumblord::Quote.new(post)
        when 'link'
          Tumblord::Link.new(post)
        end
      end
    end
  end
end