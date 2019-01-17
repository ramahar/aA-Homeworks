#Sluggish Octopus 
def n_biggest_fish(arr)
  longest = ""

  arr.each_with_index do |fish, i|
    if arr[i].length > longest.length
      longest = arr[i]
    end
  end
  longest    
end

#Dominant Octopus that takes O(n log n) time 
class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if self.count <= 1

    mid = count / 2
    sorted_l = self.take(mid).merge_sort(&prc)
    sorted_r = self.drop(mid).merge_sort(&prc)

    Array.merge(sorted_l, sorted_r, &prc)
  end

  private
  def self.merge(left, right, &prc)
    result = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        result << left.shift
      when 0
        result << left.shift
      when 1
        result << right.shift
      end
    end
    result.concat(left)
    result.concat(right)

    result
  end
end

#Clever Octopus with O(n) time 
def biggest_fish(fishes)
  longest = fishes[0]

  fishes.each do |fish|
    if fish.length > longest.length
      longest = fish
    end
  end

  longest
end


#Slow dance. Takes O(n) time 
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
tiles_array.each_with_index do |tile, index|
  return index if tile == direction
end
end

#Fast dance. Takes O(1) time 
tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right"=> 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end