require 'rubygems'
require 'maruku'

module Jekyll
    class MarkMatter < Liquid::Tag
    
        def initialize(tag_name, text, tokens)
            super
            @text = text
        end
        
        def render(context)
            doc = Maruku.new(text)
            doc.to_html
        end
    end
end

Liquid::Template.register_tag('markmatter', Jekyll::RenderTimeTag)