require 'obs1'
require 'support'

describe Document do
  it 'should call the db save method when the text is changed' do
    db = Db.new
    d = Document.new "War & Peace", "Lots of stuff", db
    d.text = 'different'
    db.doc.should == d
  end
end
  
