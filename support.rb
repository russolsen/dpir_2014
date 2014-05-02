class Db
  attr_accessor :doc
  def save(doc)
    @doc = doc
  end
end

class View
  attr_accessor :doc
  def text_changed(doc)
    @doc = doc
  end
end

class Observer
  attr_accessor :doc
  def on_doc_change(doc)
    @doc = doc
  end
end

def capture_stdout(&block)
  original_stdout = $stdout
  $stdout = fake = StringIO.new
  begin
    block.call
  ensure
    $stdout = original_stdout
  end
  fake.string
end

def output_should_match(pattern, &block)
  out = capture_stdout(&block)
  out.should match(pattern)
end
