//
//  BobTests.swift
//  BobTests
//
//  Created by Hank Turowski on 6/7/14.
//  Copyright (c) 2014 Turowski. All rights reserved.
//

import XCTest

class BobTests: XCTestCase {
    
    func bob() -> Bob {
        return Bob()
    }
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func verify(input: String, againstExpected expected: String) {
        let result = bob().hey(input)
        XCTAssertEqualObjects(expected, result, "")
    }
    
    func testStatingSomething() {
        let input = "Tom-ay-to, tom-aaaah-to."
        let expected = "Whatever."
        verify(input, againstExpected: expected)
    }
    
    func testShouting() {
        let input = "WATCH OUT!"
        let expected = "Woah, chill out!"
        verify(input, againstExpected: expected)
    }
    
    func testAskingAQustion() {
        let input = "Does this cryogenic chamber make me look fat?"
        let expected = "Sure."
        verify(input, againstExpected: expected)
    }
    
    func testTalkingForcefully() {
        let input = "Let's go make out behind the gym!"
        let expected = "Whatever."
        verify(input, againstExpected: expected)
    }
    
    func testUsingAcronyms() {
        let input = "It's OK if you don't want to go to the DMV."
        let expected = "Whatever."
        verify(input, againstExpected: expected)
    }
    
    func testForcefulQuestions() {
        let input = "WHAT THE HELL WERE YOU THINKING?"
        let expected = "Woah, chill out!"
        verify(input, againstExpected: expected)
    }
    
    func testShoutingNumbers() {
        let input = "1, 2, 3 GO!"
        let expected = "Woah, chill out!"
        verify(input, againstExpected: expected)
    }
    
    func testOnlyNumbers() {
        let input = "1, 2, 3."
        let expected = "Whatever."
        verify(input, againstExpected: expected)
    }
    
    func testExample() {
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        self.measureBlock() {
            // Put the code you want to measure the time of here.
            let bobby = self.bob()
        }
    }
    
}
