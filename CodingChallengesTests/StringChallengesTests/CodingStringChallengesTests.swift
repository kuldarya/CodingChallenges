//
//  CodingStringChallengesTests.swift
//  CodingChallengesTests
//

import XCTest
@testable import CodingChallenges

final class CodingStringChallengesTests: XCTestCase {
    var sut: EasyStringChallenges!

    override func setUp() {
        sut = EasyStringChallenges()
    }

    override func tearDown() {
        sut = nil
    }

    // Challenge 1: Are the letters unique
    func testUniqueLettersInTheInput() {
        assert(sut.checkUniqueLetters(in: "No duplicates") == true, "Challenge 1 failed")
        assert(sut.checkUniqueLetters(in: "AaBbCcDd") == true, "Challenge 1 failed")
        assert(sut.checkUniqueLetters(in: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
        assert(sut.checkUniqueLetters(in: "Hello Workd") == false, "Challenge 1 failed")
    }

    // Challenge 2: Is a String palindrome?
    func testTheStringReadsTheSameWayWhenReversed() {
        assert(sut.checkIfStringPalindrome(input: "rotator") == true, "Challenge 2 failed")
        assert(sut.checkIfStringPalindrome(input: "Rats live on no evil star") == true, "Challenge 2 failed")
        assert(sut.checkIfStringPalindrome(input: "Never odd or even") == false, "Challenge 2 failed")
        assert(sut.checkIfStringPalindrome(input: "Hello world") == false, "Challenge 2 failed")
    }

    // Challeng 3: Do two strings contain the same characters?
    func testTwoStringsHaveTheSameCharacters() {
        assert(sut.checkIfStringsContainSameCharacters(
            firstString: "abc",
            secondString: "cba") == true, "Challenge 3 failed"
        )
        assert(sut.checkIfStringsContainSameCharacters(
            firstString: " a1 b2",
            secondString: " b1 a2") == true, "Challenge 3 failed"
        )
        assert(sut.checkIfStringsContainSameCharacters(
            firstString: "abc",
            secondString: "abca") == false, "Challenge 3 failed"
        )
        assert(sut.checkIfStringsContainSameCharacters(
            firstString: "Abc",
            secondString: "abc") == false, "Challenge 3 failed"
        )
    }

    // Challenge 4: Does one string contain another?
    func testCheckIfOneStringContainsAnother() {
        assert("Hello world".customContains("Hello") == true, "Challenge 4 failed")
        assert("Hello world".customContains("WORLD") == true, "Challenge 4 failed")
        assert("Hello world".customContains("Goodbye") == false, "Challenge 4 failed")
    }

    // Challenge 5: Count the characters
    func testHowManyTimesCharacterAppearsInString() {
        assert(sut.countCharacters(in: "Hello", count: "l") == 2, "Challenge 5 failed")
        assert(sut.countCharacters(in: "Hello", count: "a") == 0, "Challenge 5 failed")
        assert(sut.countCharacters(in: "Hello", count: "e") == 1, "Challenge 5 failed")
    }

    // Challenge 6: Remove duplicate characters
    func testStringDoesntContainDuplicateCharacters() {
        assert(sut.removeDuplicateLetters(from: "Hello") == "Helo", "Challenge 6 failed")
        assert(sut.removeDuplicateLetters(from: "aabbcc") == "abc", "Challenge 6 failed")
        assert(sut.removeDuplicateLetters(from: "Abcd") == "Abcd", "Challenge 6 failed")
    }
    
    // Challenge 8: String is rotated
    func testStringIsRotated() {
        let sut = TrickyStringChallenges()
        assert(sut.isStringRotated(input: "abcde", rotated: "eabcd") == true, "Challenge 8 failed")
        assert(sut.isStringRotated(input: "abcde", rotated: "cdeab") == true, "Challenge 8 failed")
        assert(sut.isStringRotated(input: "abcde", rotated: "abced") == false, "Challenge 8 failed")
        assert(sut.isStringRotated(input: "abcde", rotated: "a") == false, "Challenge 8 failed")
    }
}
