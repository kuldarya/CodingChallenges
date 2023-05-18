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
    
    /*
     Challenge 8: Find pangrams.
     
     Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
     Tip: A pangram is a string that contains every letter of the alphabet at least once.
     */
    func isStringPangram(input: String) -> Bool {
        // Remove duplicates using `Set`.
        let set = Set(input.lowercased())
        // Ensure the letter is alphabetical.
        // As Swift's characters conform to `Comparable`, we can compare them against "a" and "z".
        let letters = set.filter { $0 >= "a" && $0 <= "z" }
        // If you remove duplicates and non-alphabetic characters, the remaining string should have 26 letters.
        return letters.count == 26
    }
}
