require 'template1'
require 'support'

describe Document do
  it 'holds onto the title and text' do
    d = Document.new "title", "stuff"
    d.title.should == 'title'
    d.text.should == 'stuff'
  end
end
  
