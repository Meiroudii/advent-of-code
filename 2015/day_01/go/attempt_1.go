package main

import (
	"fmt"
	"os"
)

func main() {
	input, err := os.ReadFile("../input.txt")
	if err != nil {
		panic(err)
	}

	floor := 0
	for _, c := range input {
		if c == '(' {
			floor++
		} else if c == ')' {
			floor--
		}
	}
	fmt.Println("Part 1: Final floor =", floor)

	floor = 0
	pos := -1
	for i, c := range input {
		if c == '(' {
			floor++
		} else if c == ')' {
			floor--
		}
		if floor == -1 {
			pos = i + 1 
			break
		}
	}
	fmt.Println("Part 2: First basement position =", pos)
}
