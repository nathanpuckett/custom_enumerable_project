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
