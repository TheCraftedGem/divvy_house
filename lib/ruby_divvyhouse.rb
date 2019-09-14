class DivvyHouse
    def self.convert(x, y)
    current_node = {
      x: 1,
      y: 1,
      value: 1
    }
​
    until current_node[:x] == x
      current_node[:value] += current_node[:x] + 1
      current_node[:x] += 1
    end
​
    until current_node[:y] == y
      current_node[:value] += current_node[:x] + current_node[:y] - 1
      current_node[:y] += 1
    end
​
    current_node[:value]
  end

end