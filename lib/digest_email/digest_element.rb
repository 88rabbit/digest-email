require 'digest_email/digest_element'

module DigestEmail
  class DigestElement
    attr_accessor :children

    def initialize
      @children = []
    end

    # Render each child, join all the html and wrap it
    def render
      wrap @children.map(&:render).join("\n")
    end

    # By default don't wrap with anything
    def wrap(inner)
      inner
    end
  end
end
