class Document
  attr_accessor :title
  attr_reader :text

  def initialize(title, text, db, view)
    @title = title
    @text = text
    @db = db
    @view = view
  end

  def text=(t)
    @text = t
    @db.save(self)
    @view.text_changed(self)
  end
end
