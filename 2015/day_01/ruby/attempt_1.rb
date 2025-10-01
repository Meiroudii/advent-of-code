input = File.read("../input.txt").strip

final_floor = input.chars.sum { |c| c == '(' ? 1 : -1 }
puts "Part 1: Final floor = #{final_floor}"

floor = 0
position = nil

input.chars.each_with_index do |c, i|
  floor += (c == '(' ? 1 : -1)
  if floor == -1
    position = i + 1
    break
  end
end

puts "Part 2: First basement position = #{position}"
