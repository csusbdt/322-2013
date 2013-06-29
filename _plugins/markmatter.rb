module Jekyll
    class MarkMatter < Liquid::Tag
    
        def initialize(tag_name, text, tokens)
        
        end
        
        def render(context)
            
        end
    end
end

Liquid::Template.register_tag('markmatter', Jekyll::RenderTimeTag)