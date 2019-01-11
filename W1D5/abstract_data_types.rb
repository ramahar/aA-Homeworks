class Stack
  def initialize
    @array = []
  end

  def push(el)
    array.push(el)
    el
  end

  def pop
    array.pop
  end

  def peek
    array.last
  end

  private
  attr_reader :array
end

class Queue
  def initialize
    @array = []
  end

  def enqueue(el)
    array.push(el)
    el
  end

  def dequeue
    array.shift
  end

  def peek
    array.first
  end

  private

  attr_reader :array
end

class Map
  def initialize
    @array = []
  end

  def set(key, value)
    idx = array.index { |pair| pair[0] == key }
    if idx
      array[idx][1] = value
    else
      array.push([key, value])
    end
    value
  end

  def get(key)
    array.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
    value = get(key)
    array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(array)
  end

  private

  attr_reader :array

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end
