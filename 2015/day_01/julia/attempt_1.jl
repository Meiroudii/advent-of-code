s = chomp(read("../input.txt", String))
global level = 0
global position = 0

for (i, c) in enumerate(s)
    if c == '('
        global level += 1
    elseif c == ')'
        global level -= 1
    end
    if position == 0 && level == -1
        global position = i
    end
end

println(level, " ", position)
