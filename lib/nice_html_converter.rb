require 'kramdown'

# Converts Markdown to HTML, and adds a bit of CSS and a title element.
class NiceHtmlConverter < Kramdown::Converter::Html

  STYLE = <<EOS
<style>
body {
  padding-top: 1.5em;
  padding-left: 15%;
  padding-right: 15%;
}

p {
  line-height: 1.3;
}

pre  {
  padding: 1em;
  background-color: #e7e7e7;
  overflow: auto;
}
</style>
EOS

  def initialize(*args)
    @title = nil
    super
  end

  def convert_header(el, indent)
    if !@title
      @title = el.options[:raw_text]
    end

    super
  end

  def convert_root(*args)
    result = super # super needs to be called first to set @title.
    title = "<title>#{@title}</title>" if @title
    "<!DOCTYPE html>\n#{title}\n#{STYLE}\n#{result}"
  end
end
