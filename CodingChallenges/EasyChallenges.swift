//
//  EasyChallenges.swift
//  CodingChallenges
//

import Foundation

class EasyChallenges {

    init() {}

    // Mark: - Strings

    /*
     Challenge 1: Are the letters unique?

     Write a function that accepts a String as its only parameter,
     and returns true if the string has only unique letters, taking letter case into account
     */
    func checkUniqueLetters(in input: String) -> Bool {
        var checkedCharacters = [Character]()

        for char in input {
            if checkedCharacters.contains(char) {
                return false
            }
            checkedCharacters.append(char)
        }

        return true
    }

    /*
     Challenge 2: Is a String palindrome?

     Write a function that accepts a String as its only parameter,
     and returns true if the string reads the same when reversed, ignoring case.
     */
    func checkIfStringPalindrome(input: String) -> Bool {
        return true
    }
}
