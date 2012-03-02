module Tumblord
  class Post

    def self.lazy_attr_reader(*attrs)
      attrs.each do |attribute|
        class_eval do
          define_method attribute do
            @attrs[attribute.to_s]
          end
        end
      end
    end

    lazy_attr_reader :blog_name, :id, :post_url, :type, :timestamp,
      :date, :format, :reblog_key, :tags, :bookmarklet, :mobile,
      :source_url, :source_title, :total_posts

    # Initializes a new Base object
    #
    # @param attrs [Hash]
    # @return [Twitter::Base]
    def initialize(attrs={})
      @attrs = attrs.dup
    end
  end
end