# A Liquid tag for Jekyll sites that allows embedding Lightbox images.
# by: kyoendo
# Source URL: https://gist.github.com/4035604
#
# Example usage: {% lightbox 2012/abc.png, Title of Image, Alt Title %}

require 'RMagick'
include Magick


module Jekyll
  class GalleryboxTag < Liquid::Tag
    def initialize(tag_name, text, token)
      super
      @text = text
    end

    def render(context)
      path, title, alt = @text.split(',').map(&:strip)
      max_size_x = 200
      max_size_y = 200

      begin
        source_path = "./"+File.dirname(context.environments.first["page"]["url"])+"/#{path}"
        dest_path = "./"+File.dirname(context.environments.first["page"]["url"])+"/#{path}"+"-prev"+ File.extname(path)
        dest_file="#{path}"+"-prev"+ File.extname(path)
        m_image = ImageList.new(source_path)
        m_image.resize_to_fit!(max_size_x, max_size_y)
        puts "Writing thumbnail to #{dest_path}"
        m_image.write("#{dest_path}")
      rescue
        puts "error"
        puts $!
      end

      %{<a href="#{path}" rel="lightbox" title="#{title}"><img src="#{dest_file}" alt="#{alt || title}" /></a>}
    
    end
  end
end

Liquid::Template.register_tag('gallerybox', Jekyll::GalleryboxTag)
