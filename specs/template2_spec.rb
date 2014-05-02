require 'template2'
require 'support'

describe Document do
  it 'renders to plain text' do
    d = Document.new "title", "stuff"
    output_should_match(/^title.*The end/m) do
      d.render(:plain)
    end
  end

   it 'renders to plain text' do
    d = Document.new "title", "stuff"
    output_should_match(/^<html>.*title.*<.html>/m) do
      d.render(:html)
    end
  end
end
