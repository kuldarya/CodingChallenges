//
//  EasyNumbersChallenges.swift
//  CodingChallenges
//

import Foundation

final class EasyNumbersChallenges {
    
    init() {}
    
    /*
     Challenge 16: Fizz Buzz
     
     Write a function that counts from 1 through 100, and
     prints “Fizz” if the counter is evenly divisible by 3,
     “Buzz” if it’s evenly divisible by 5,
     “Fizz Buzz” if it’s even divisible by three and five,
     or the counter number for all other cases.
     */
    func isEvenlyDividable() {
        for i in 1...100 {
            if i % 3 == 0 && i % 5 == 0 {
                print("Fizz Buzz")
            } else if i % 3 == 0 {
                print("Fizz")
            } else if i % 5 == 0 {
                print("Buzz")
            } else {
                print(i)
            }
        }
    }
}
