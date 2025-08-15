//
//  HackerNewsTests.swift
//  HackerNewsTests
//
//  Created by Aditi Bansal on 8/13/25.
//

import XCTest
@testable import HackerNews

final class HackerNewsTests: XCTestCase {
    var objCalculator: Calculator?
    var objFizzBuzz: FizzBuzz?
    var objPrime: Prime?
    var objReverse: Reverse?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objCalculator = Calculator()
        objFizzBuzz = FizzBuzz()
        objPrime = Prime()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    objCalculator = nil
        objFizzBuzz = nil
        objPrime = nil
    }
    
    func testSum() {
        let sumValue = objCalculator?.sum(10, 20)
        XCTAssertEqual(sumValue, 30)
        XCTAssertEqual(objCalculator?.sum(nil, 20), 20)
        XCTAssertEqual(objCalculator?.sum(10, nil), 10)
        XCTAssertEqual(objCalculator?.sum(nil, nil), 0)

    }

    func testSubtract() {
        let subtractValue = objCalculator?.sub(10, 20)
        XCTAssertEqual(subtractValue, -10)
        XCTAssertEqual(objCalculator?.sub(nil, 20), -20)
        XCTAssertEqual(objCalculator?.sub(10, nil), 10)
        XCTAssertEqual(objCalculator?.sub(nil, nil), 0)
    }

    func testMultiply() {
        let multiplyValue = objCalculator?.multiply(10, 20)
        XCTAssertEqual(multiplyValue, 200)
        XCTAssertEqual(objCalculator?.multiply(nil, nil), 0)
    }

    func testDivide() {
        // Division by zero returns 0
        let divideValue = objCalculator?.divide(10, 0)
        XCTAssertEqual(divideValue, 0)
        
        // Normal division
        let divideValue1 = objCalculator?.divide(100, 10)
        XCTAssertEqual(divideValue1, 10)
        XCTAssertEqual(objCalculator?.divide(nil, 10), 0)
        XCTAssertEqual(objCalculator?.divide(10, nil), 0)
        XCTAssertEqual(objCalculator?.divide(nil, nil), 0)
    }
    
    func testFizzBuzz() {
        XCTAssertEqual(objFizzBuzz?.fizzBuzz(number: 15), "FizzBuzz")
        XCTAssertEqual(objFizzBuzz?.fizzBuzz(number: 3), "Fizz")
        XCTAssertEqual(objFizzBuzz?.fizzBuzz(number: 5), "Buzz")
        XCTAssertEqual(objFizzBuzz?.fizzBuzz(number: 1), "1")
    }
    
    func testIsPrime() {
        XCTAssertEqual(objPrime?.isPrime(2), false)
        XCTAssertEqual(objPrime?.isPrime(4), true)
        XCTAssertEqual(objPrime?.isPrime(13), false)
    }
    
    func testReverseString() {
        XCTAssertEqual(objReverse?.reverseString(r: "Swift"), "tfiwS")
        XCTAssertEqual(objReverse?.reverseString(r: ""), "")
        XCTAssertEqual(objReverse?.reverseString(r: "A"), "A")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


