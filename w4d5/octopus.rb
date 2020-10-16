
def sluggish_octopus(fish)
    big_fish = fish[0]
    (0...fish.length-1).each do |fish1|
        max_length = true
        (fish1+1...fish.length).each do |fish2|
        big = fish2 if fish2 > fish
        end
    end
    big_fish
end



def dominant_octopus(fish)
  prc = Proc.new { |x, y| x <=> y}
  fish.merge_sort(&prc)[-1]
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }
    return self if self.length <= 1
    mid_idx = self.length / 2
    sorted_left = self[0...mid_idx].merge_sort(&prc)
    sorted_right = self[mid_idx..-1].merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged + left + right
  end
end


def clever_octopus(fish)
  big_fishy = fish[0]
  fish.each do |fishy|
    if fishy.length > big_fishy.length
      big_fishy = fishy
    end
  end
  big_fishy
end