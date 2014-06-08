// Playground - noun: a place where people can play

import Cocoa

func inputContainsALetter(input: String) -> Bool {
    var containsLetter: Bool = false
    
    let regex = NSRegularExpression(pattern: "[A-Za-z]", options: NSRegularExpressionOptions.CaseInsensitive, error: nil)
    
    let range = NSMakeRange(0, countElements(input))
    let matches = regex.matchesInString(input, options: NSMatchingOptions.ReportCompletion, range: range)
    return (matches.count != 0) ? true : false
}
inputContainsALetter("a")
inputContainsALetter("4")

func isQuestion(input: String) -> Bool {
    return input.hasSuffix("?")
}

func isShouting(input: String) -> Bool {
    return input == input.uppercaseString && inputContainsALetter(input)
}

isShouting("GO!")
isShouting("1, 2!")
isShouting("WATCH OUT!")


