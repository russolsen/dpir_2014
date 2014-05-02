class Document
  attr_accessor :title
  attr_reader :text

  def initialize(title, text)
    @title = title
    @text = text
    @observers = []
  end

  def add_observer(o)
    @observers << o
  end

  def text=(t)
    @text = t
    @observers.each {|o| o.on_doc_change(self)}
  end
end
