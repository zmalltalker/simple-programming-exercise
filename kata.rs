use std::process;

fn as_while_loop(numbers: &[i32]) -> i32 {
    let mut done = false;
    let mut i = 0;
    let mut result = 0;
    while !done {
        result = result + numbers[i];
        i = i + 1;
        if i == numbers.len() {
            done = true;
        }
    }
    result
}

fn as_for_loop(numbers: &[i32]) -> i32 {
    let mut result = 0;
    for number in numbers {
        result = result + number;
    }
    result
}

fn as_recursive(numbers: &[i32], mut sum: i32) -> i32{
    if numbers.len() < 1 {
        sum
    } else {
        sum = sum + &numbers[0];
        as_recursive(&numbers[1..], sum)
    }
}
fn main(){
    let numbers = [1,2,3,4,5,6];
    let result = as_for_loop(&numbers);
    println!("The result from running under Rust is {}", result);
    let result2 = as_while_loop(&numbers);
    println!("The result from a while loop in Rust is {}", result2);
    let result3 = as_recursive(&numbers, 0);
    println!("The result from recursion is {}", result3);
    if result == 21 && result2 == 21 && result3 == 21 {
        process::exit(0);
    } else {
        process::exit(1);
    }
}
