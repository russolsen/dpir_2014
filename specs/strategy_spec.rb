require 'strategy'
require 'support'

describe PlainRenderer do
  it 'renders to plain text' do
    d = Document.new "title", "stuff", PlainRenderer.new
    output_should_match(/^title.*The end/m) do
      d.render
    end
  end
end

describe HtmlRenderer do
   it 'renders to html' do
    d = Document.new "title", "stuff", HtmlRenderer.new
    output_should_match(/^<html>.*title.*<.html>/m) do
      d.render
    end
  end
end
