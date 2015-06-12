module Jekyll
  class SVGSprite < Liquid::Tag

    def render(context)
      if tag_contents = determine_arguments(@markup.strip)
        icon_name, size = tag_contents[0], tag_contents[1]
        icon_tag(icon_name, size)
      end
    end

    private

    def determine_arguments(input)
      matched = input.match(/\A(\S+) ?(\S+)?\Z/)
      [matched[1].to_s.strip, matched[2].to_s.strip] if matched && matched.length >= 3
    end

    def icon_tag(icon_name, size)

      # size = size.split('x')
      if size.empty?
        width = height = 30
      else
        if size.include? "x"
          size = size.split('x')
          width = size[0]
          height = size[1]
        else
          width = height = size
        end
      end

      "<svg width=\"#{width}\" height=\"#{height}\" class=\"#{icon_name}\"><use xlink:href=\"/assets/images/icons.svg#icon-#{icon_name}\"></use></svg>"
    end
  end
end

Liquid::Template.register_tag('icon', Jekyll::SVGSprite)
