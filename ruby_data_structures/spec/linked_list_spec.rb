require './src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @linkedList = LinkedList.new
  end

  it "initializes empty" do
    @linkedList.head.should == nil
    @linkedList.tail.should == nil
  end

  describe "#add" do
    it "should add the first item correctly" do
      @linkedList.addToTail('hi')
      @linkedList.tail.value.should == "hi"
      @linkedList.head.value.should == "hi"
    end

    it "should add other items correctly" do 
      @linkedList.addToTail('first item')
      @linkedList.addToTail('second item')
      @linkedList.tail.value.should == "second item"
      @linkedList.head.value.should == "first item"
    end
  end

  describe "#remove" do
    it "should remove items" do
      @linkedList.addToTail('first item')
      @linkedList.tail.value.should == "first item"
      @linkedList.removeHead
      @linkedList.tail.should == nil
    end

    it "should remove the first item" do
      @linkedList.addToTail('first item')
      @linkedList.addToTail('second item')
      @linkedList.removeHead.should == 'first item'
      @linkedList.removeHead.should == 'second item'
    end
  end


end

