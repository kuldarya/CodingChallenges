//
//  TrickyStringChallenges.swift
//  CodingChallenges
//

import Foundation

final class TrickyStringChallenges {
    
    init() {}
        
    /*
     Challenge 8: String is rotated.
     
     Write a function that accepts two strings
     and returns true if one string is rotation of the other,
     taking letter case into account.
     
     Tip: A string rotation is when you take a string, remove some letters from its end,
     then append them to the front.
     For example, “swift” rotated by two characters would be “ftswi”.
     */
    func isStringRotated(input: String, rotated: String) -> Bool {
        guard input.count == rotated.count else {
            return false
        }
        let combined = input + input
        return combined.contains(rotated)
    }
}
