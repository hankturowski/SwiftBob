//
//  Bob.swift
//  Bob
//
//  Created by Hank Turowski on 6/7/14.
//  Copyright (c) 2014 Turowski. All rights reserved.
//

import Foundation

class Bob {
    func hey(input: String) -> String {
        var response: String
        
        if isShoutingWithQuestion(input) {
            response = "Woah, chill out!"
        } else if isQuestion(input) {
            response = "Sure."
        } else if isShouting(input) {
            response = "Woah, chill out!"
        } else {
            response = "Whatever."
        }
        
        return response
    }
    
    func isQuestion(input: String) -> Bool {
        return input.rangeOfString("?") ? true : false
    }
    
    func isShouting(input: String) -> Bool {
         return (input == input.uppercaseString) &&
            inputDoesNotContainsNumbers(input)
    }
    
    func isShoutingWithQuestion(input: String) -> Bool {
        return isQuestion(input) && isShouting(input)
    }
    
    func inputDoesNotContainsNumbers(input: String) -> Bool {
        var containsNumbers = false
        let numbers = 0...9
        
        for number in numbers {
            if input.rangeOfString(number.description) {
                containsNumbers = true
                break
            }
        }
        
        return containsNumbers
    }
    
    func inputContainsALetter(input: String) -> Bool {
        var containsLetter: Bool = false
        
        let regex = NSRegularExpression(pattern: "[A-Za-z]", options: NSRegularExpressionOptions.CaseInsensitive, error: nil)
        
        NSRange range = NSMakeRange(0, input.length())
        let matches = regex.matchesInString(input, options: NSMatchingOptions.ReportCompletion, range: range)
    }
}