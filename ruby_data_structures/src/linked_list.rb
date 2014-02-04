class LinkedList

  # attr_reader :head, :tail

  class Node
    attr_accessor :next
    attr_reader   :value
    def initialize(value)
      @value = value
      @next = nil
    end 
  end

  def initialize
    @list = []
    @head = nil
    @tail = nil
  end

  def head 
    @head
  end

  def tail
    @tail
  end

  def addToTail(value)
    node = Node.new(value)
    if @tail == nil then
      @head = @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end

  def removeHead
    if @tail == nil then
      return undefined
    else 
      result = @head.value
      if @head == @tail then
        @head = nil
        @tail = nil
      else
        @head = @head.next
      end
    end
    result
  end

  def contains(target, node)
    current = @head
    while current != nil
      if current.value == target
        return true
      else 
        current = current.next
      end
      return false
    end
  end

end
