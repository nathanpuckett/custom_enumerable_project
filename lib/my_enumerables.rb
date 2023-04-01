module Enumerable
  # Your code goes here
  def my_each_with_index(&block)
    for i in 0...self.length do
      block.call(self[i], i)
    end

    self
  end

  def my_select(&block)
    arr = []
    for i in self do
      if block.call(i)
        arr << i
      end
    end
    arr
  end

  def my_all?(&block)
    for i in self do
      return false unless block.call(i)
    end
    true
  end

  def my_any?(&block)
    for i in self do
      return true if block.call(i)
    end
    false
  end

  def my_none?(&block)
    for i in self do
      return false if block.call(i)
    end
    true
  end

  def my_count(&block)
    count = 0

    if block_given?
      for i in self do
        count += 1 if block.call(i)
      end
    else
      for i in self do
        count += 1 if i
      end  
    end

    count
  end

  def my_map(&block)
    arr = []
    for i in self do
      arr << block.call(i)
    end
    arr
  end

  def my_inject(&block)
    acc = 0
    for i in self do
      acc += block.call(i)
    end
    acc
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each(&block)
    for i in self do
      block.call(i)
    end
    
    self
  end
end
