//
//  EasyStringChallenges.swift
//  CodingChallenges
//

import Foundation

class EasyStringChallenges {

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
        let lowercasedInput = input.lowercased()

        return String(lowercasedInput.reversed()) == lowercasedInput
    }

    /*
     Challenge 3: Do two strings contain the same characters?

     Write a function that accepts two String parameters,
     and returns true if they contain the same characters in any order
     taking into account letter case
     */
    func checkIfStringsContainSameCharacters(firstString: String, secondString: String) -> Bool {
        return firstString.sorted() == secondString.sorted()

        /*
         That was my initial solution, too long but still works:

        let firstSorted = firstString.sorted()
        let secondSorted = secondString.sorted()

        if firstSorted == secondSorted {
            for char in firstSorted {
                if secondSorted.contains(char) {
                    return true
                }
            }
        }
        return false
         */
    }

    /*
     Challenge 5: Count the characters

     Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
     */
    func countCharacters(in input: String, count: Character) -> Int {
        var letterCount = 0

        for letter in input {
            if letter == count {
                letterCount += 1
            }
        }
        return letterCount

//     Second solution, with `reduce`
//        return input.reduce(0) {
//            $1 == count ? $0 + 1 : $0
//        }
    }
}

/*
 Challenge 4: Does one string contain another?

 Write your own version of the contains() method on String
 that ignores letter case, and without using the existing contains() method.

 Tip: range(of:) method returns the position of one string inside another.
 */
extension String {
    func customContains(_ string: Self) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
        //self.uppercased().range(of: string.uppercased()) != nil
    }
}
