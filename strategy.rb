class Document
  attr_accessor :title, :text
  attr_accessor :renderer

  def initialize(title,  text, renderer)
    @title = title
    @text = text
    @renderer = renderer
  end

  def render
    @renderer.render(self)
  end
end

class PlainRenderer
  def render(doc)
    puts doc.title
    doc.text.each_line {|l| puts l}
    puts "The end"
  end
end

class HtmlRenderer
  def render(doc)
    puts "<html>"
    puts "<head><title>#{doc.title}</title></head>"
    puts "<body>"
    doc.text.each_line {|l| puts "<p>#{l}</p>"}
    puts "</body>"
    puts "</html>"
  end
end


#doc = Document.new("War & Peace",
#                   "Lots o Russian", HtmlRenderer.new)
#doc.render
#
#puts 
#
#doc.renderer = PlainRenderer.new
#doc.render
