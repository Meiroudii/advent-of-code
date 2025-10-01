use std::fs;

fn main() {
    let input = fs::read_to_string("../input.txt").expect("Failed to read file");

    let final_floor: i32 = input.chars().map(|c| match c {
        '(' => 1,
        ')' => -1,
        _ => 0,
    }).sum();

    println!("Part 1: Final floor = {}", final_floor);

    let mut floor = 0;
    let mut position = None;

    for (i, c) in input.chars().enumerate() {
        match c {
            '(' => floor += 1,
            ')' => floor -= 1,
            _ => {}
        }
        if floor == -1 {
            position = Some(i + 1);
            break;
        }
    }

    println!("Part 2: First basement position = {}", position.unwrap());
}
