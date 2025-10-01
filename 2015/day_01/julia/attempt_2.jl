function main()
    s = chomp(read("../input.txt", String))
    level = 0
    position = 0

    for (i, c) in enumerate(s)
        level += (c == '(') ? 1 : (c == ')' ? -1 : 0)
        if position == 0 && level == -1
            position = i
        end
    end

    println(level, " ", position)
end

main()
