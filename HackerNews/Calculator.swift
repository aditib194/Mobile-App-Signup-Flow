//
//  File.swift
//  HackerNews
//
//  Created by Aditi Bansal on 8/15/25.
//

import Foundation

struct Calculator {
    func sum(_ a: Double?, _ b: Double?) -> Double {
        return (a ?? 0) + (b ?? 0)
    }
    
    func sub(_ a: Double?, _ b: Double?) -> Double {
        return (a ?? 0) - (b ?? 0)
    }
    
    func multiply(_ a: Double?, _ b: Double?) -> Double {
        return (a ?? 0) * (b ?? 0)
    }
    
    func divide(_ a: Double?, _ b: Double?) -> Double {
        guard let a = a, let b = b else {
            return 0
        }
        if(b == 0) {
            return 0
        }
        return a / b
    }
}

