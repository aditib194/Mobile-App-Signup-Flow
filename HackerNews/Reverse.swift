//
//  Reverse.swift
//  HackerNewsTests
//
//  Created by Aditi Bansal on 8/15/25.
//

import Foundation
struct Reverse {
    func reverseString(r: String) -> String {
        var reversed = ""
        for char in r {
            reversed = String(char) + reversed
        }
        return reversed
    }
}
