require 'template3'
require 'support'

describe PlainDocument do
  it 'renders to plain text' do
    d = PlainDocument.new "title", "stuff"
    output_should_match(/^title.*The end/m) do
      d.render
    end
  end
end

describe HtmlDocument do
   it 'renders to html' do
    d = HtmlDocument.new "title", "stuff"
    output_should_match(/^<html>.*title.*<.html>/m) do
      d.render
    end
  end
end
