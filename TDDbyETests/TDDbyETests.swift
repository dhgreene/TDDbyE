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
        let five = Money.dollar(5)
        XCTAssertEqual(Money.dollar(10), five.times(2))
        XCTAssertEqual(Money.dollar(15), five.times(3))
    }
    
    func testEquality() {
        XCTAssertEqual(Money.dollar(5), Money.dollar(5), "Equality test failed: $5 != $5")
        XCTAssertNotEqual(Money.dollar(5), Money.dollar(6), "Equality test failed: $5 == $6")
        XCTAssertNotEqual(Money.franc(5), Money.dollar(5), "Equality test failed: 5 francs == $5")
    }
    
    func testFrancMultiplication() {
        let five = Money.franc(5);
        XCTAssertEqual(Money.franc(10), five.times(2))
        XCTAssertEqual(Money.franc(15), five.times(3))
    }
    
    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency)
        XCTAssertEqual("CHF", Money.franc(1).currency)
    }
    
    func testSimpleAddition() {
        let five = Money.dollar(5)
        let sum = five.plus(five)
        let bank = Bank()
        let reduced = bank.reduce(sum, to: "USD")
        XCTAssertEqual(Money.dollar(10), reduced)
    }
    
    func testPlusReturnsSum() {
        let five = Money.dollar(5)
        let result = five.plus(five)
        let sum = result as! Sum
        XCTAssertEqual(five, sum.augend)
        XCTAssertEqual(five, sum.addend)
    }
    
    func testReduceSum() {
        let sum = Sum(augend: Money.dollar(3), addend: Money.dollar(4))
        let bank = Bank();
        let result = bank.reduce(sum, to: "USD")
        XCTAssertEqual(Money.dollar(7), result)
    }
    
    func testReduceMoney() {
        let bank = Bank();
        let result = bank.reduce(Money.dollar(1), to: "USD");
        XCTAssertEqual(Money.dollar(1), result);
    }
}
