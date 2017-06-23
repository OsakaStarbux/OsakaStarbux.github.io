class YoutubeEmbedTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  #Lookup allows access to the page/post variables through the tag context
  def lookup(context, name)
    lookup = context
    name.split(".").each { |value| lookup = lookup[value] }
    lookup
  end

  def render(context)
    # Reading the tag parameter
    input = @input
    # Create the HTML output for the video container

   output = "<div class=\"embed-responsive embed-responsive-16by9\"><iframe class=\"embed-responsive-item\" width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/#{input}\" frameborder=\"0\"
        allowfullscreen=\"\"></iframe></div>"

    return output
  end
end
Liquid::Template.register_tag('youtube', YoutubeEmbedTag)
