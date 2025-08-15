//
//  Prime.swift
//  HackerNews
//
//  Created by Aditi Bansal on 8/15/25.
//

import Foundation
struct Prime {
    func isPrime(_ number: Int) -> Bool {
        if number <= 1 { return false }
        if number <= 3 { return true } // 2 and 3 are prime
        
        // Exclude multiples of 2 or 3 early
        if number % 2 == 0 { return false }
        
        // Check divisibility up to √number
        var i = 5
        while i * i <= number {
            if number % i == 0 {
                return false
            }
            i += 1
        }
        return true
    }
}
