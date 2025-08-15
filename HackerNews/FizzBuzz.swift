//
//  FizzBuzz.swift
//  HackerNews
//
//  Created by Aditi Bansal on 8/15/25.
//

import Foundation

struct FizzBuzz {
    func fizzBuzz(number: Int) -> String {
        switch (number % 3 == 0, number % 5 == 0) {
        case (true, true):
            return "FizzBuzz"
        case (true, false):
            return "Fizz"
        case (false, true):
            return "Buzz"
        default:
            return "\(number)"
        }
    }
}
