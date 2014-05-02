require 'obs3'
require 'support'

describe Document do
  it 'should inform the observers when something changes' do
    o1 = Observer.new
    o2 = Observer.new
    o3 = Observer.new
    d = Document.new "War & Peace", "Lots of stuff"
    d.add_observer(o1)
    d.add_observer(o2)
    d.add_observer(o3)
    d.text = 'different'
    o1.doc.should == d
    o2.doc.should == d
    o3.doc.should == d
  end
end
  
