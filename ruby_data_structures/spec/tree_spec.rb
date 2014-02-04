require './src/tree.rb'

describe Tree do
  before(:each) do
    @tree = Tree.new(1)
  end

  it "initializes empty" do
    @tree.value.should == 1
  end

  describe "#add" do
    it "should add the first item correctly" do
      @tree.addChild(2)
      @tree.children[0].value.should == 2
    end

    it "should add other items correctly" do 
      @tree.addChild(2)
      @tree.addChild(3)
      @tree.children[0].value.should == 2
      @tree.children[1].value.should == 3
    end
  end

end

