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
}
