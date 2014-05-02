class Document
  attr_accessor :title, :text

  def initialize(title, text)
    @title = title
    @text = text
  end

  def render
    render_start
    render_title(title)
    text.each_line {|l| render_line(l)}
    render_end
  end
end

class PlainDocument < Document
  def render_start
  end

  def render_title(t)
    puts t
  end

  def render_line(l)
    puts l
  end

  def render_end
    puts "The end"
  end
end

class HtmlDocument < Document
  def render_start
    puts "<html>"
  end

  def render_title(t)
    puts "<head><title>#{t}</title></head>"
    puts "<body>"
  end

  def render_line(l)
    puts "<p>#{l}</p>"
  end

  def render_end
    puts "</body>"
    puts "</html>"
  end
end


#d = HtmlDocument.new("War & Peace", "A long \nstory...")
#d.render
#
#puts
#puts
#
#d = PlainDocument.new("War & Peace", "A long\n story...")
#d.render
#
