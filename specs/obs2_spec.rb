require 'obs2'
require 'support'

describe Document do
  it 'should call the db save method when the text is changed' do
    db = Db.new
    view = View.new
    d = Document.new "War & Peace", "Lots of stuff", db, view
    d.text = 'different'
    db.doc.should == d
    view.doc.should == d
  end
end
  
