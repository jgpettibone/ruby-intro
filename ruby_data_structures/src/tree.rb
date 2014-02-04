class Tree

  def initialize(value)
    @value = value
    @children = [];
  end

  def value
    @value
  end

  def children
    @children
  end

  def addChild(value)
    @children.push(Tree.new(value))
  end

  def contains(target)
    if @value == target then
      return true
    else 
      if (children.each {|child| child.contains(target)}) then
        return true
      end
    end
    false
  end

end