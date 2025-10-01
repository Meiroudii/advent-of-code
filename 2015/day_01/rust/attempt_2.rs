const INPUT: &str = include_str!("../input.txt");

fn main() {
    let final_floor: i32 = INPUT.chars().map(|c| match c {
        '(' => 1,
        ')' => -1,
        _ => 0,
    }).sum();

    println!("Part 1: Final floor = {}", final_floor);

    let mut floor = 0;
    let mut position = None;

    for (i, c) in INPUT.chars().enumerate() {
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
