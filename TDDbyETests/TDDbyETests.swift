//
//  TDDbyETests.swift
//  TDDbyETests
//
//  Created by David Greene on 7/13/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import XCTest
@testable import TDDbyE

class TDDbyETests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testMultiplication() {
        let five = Dollar(amount: 5)
        XCTAssertEqual(Dollar(amount: 10), five.times(2))
        XCTAssertEqual(Dollar(amount: 15), five.times(3))
    }
    
    func testEquality() {
        XCTAssertEqual(Dollar(amount: 5), Dollar(amount: 5), "Equality test failed: $5 != $5")
        XCTAssertNotEqual(Dollar(amount: 5), Dollar(amount: 6), "Equality test failed: $5 != $6")
    }
    
    func testFrancMultiplication() {
        let five = Franc(amount: 5);
        XCTAssertEqual(Franc(amount: 10), five.times(2));
        XCTAssertEqual(Franc(amount: 15), five.times(3));
    }
    
}
