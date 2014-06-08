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
        
        // initialize response to the default value, saving an extra line later for fallthrough case
        var response: String = "Whatever."
        
        if isShouting(input) {
            response = "Woah, chill out!"
        } else if isQuestion(input) {
            response = "Sure."
        } else if isSilent(input) {
            response = "Fine, be that way."
        }
        
        return response
    }
    
    func isQuestion(input: String) -> Bool {
        return input.hasSuffix("?")
    }
    
    func isShouting(input: String) -> Bool {
         return input == input.uppercaseString &&
            inputContainsALetter(input)
    }
    
    func isSilent(input: String) -> Bool {
        let range = NSMakeRange(0, countElements(input))
        var newInput: String = ""
        for character in input {
            if character != " " {
                newInput += character
            }
        }
        return countElements(newInput) == 0
    }
    
    func inputContainsALetter(input: String) -> Bool {
        var containsLetter: Bool = false
        
        let regex = NSRegularExpression(pattern: "[A-Za-z]", options: NSRegularExpressionOptions.CaseInsensitive, error: nil)
        
        let range = NSMakeRange(0, countElements(input))
        let matches = regex.matchesInString(input, options: NSMatchingOptions.ReportCompletion, range: range)
        return (matches.count != 0) ? true : false
    }
}