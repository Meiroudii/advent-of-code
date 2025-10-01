function main()
    f = 0; p = 0
    for (i, c) in enumerate(chomp(read("../input.txt", String)))
        f += c == '(' ? 1 : -1
        p == 0 && f == -1 && (p = i)
    end
    println(f, " ", p)
end

main()
