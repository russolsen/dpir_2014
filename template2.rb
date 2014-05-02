class Document
  attr_accessor :title, :text

  def initialize(title, text)
    @title = title
    @text = text
  end

  def render(format)
    if format == :plain
      puts title
      text.each_line {|l| puts l}
      puts "The end"
    else
      puts "<html>"
      puts "<head><title>#{title}</title></head>"
      puts "<body>"
      text.each_line {|l| puts "<p>#{l}</p>"}
      puts "</body>"
      puts "</html>"
    end
  end
end

#d = Document.new("War & Peace", "Long story...")
#d.render(:html)

