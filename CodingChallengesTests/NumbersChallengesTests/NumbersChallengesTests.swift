//
//  NumbersChallengesTests.swift
//  CodingChallengesTests
//

import XCTest
@testable import CodingChallenges

final class NumbersChallengesTests: XCTestCase {
    var sut: EasyNumbersChallenges!

    override func setUp() {
        sut = EasyNumbersChallenges()
    }

    override func tearDown() {
        sut = nil
    }
}
