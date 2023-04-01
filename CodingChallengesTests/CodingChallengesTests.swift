//
//  CodingChallengesTests.swift
//  CodingChallengesTests
//

import XCTest
@testable import CodingChallenges

final class CodingChallengesTests: XCTestCase {
    var sut: EasyChallenges!

    override func setUp() {
        sut = EasyChallenges()
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
}
