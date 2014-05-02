class Document
  attr_accessor :title
  attr_reader :text

  def initialize(title, text, db)
    @title = title
    @text = text
    @db = db
  end

  def text=(t)
    @text = t
    @db.save(self)
  end
end
