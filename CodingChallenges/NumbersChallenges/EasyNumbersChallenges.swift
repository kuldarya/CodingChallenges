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
    
    /*
     Challenge 17: Random number in range
     
     Write a function that accepts positive minimum and maximum integers,
     and returns a random number between those two bounds, inclusive.
     */
    func generateRandomNumberBetween(min: Int, max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max - min + 1))) + min
    }
    
    /*
     Challenge 18: Recreate the pow() function
     
     Create a function that accepts positive two integers,
     and raises the first to the power of the second.
     */
    func toThePowerOfSecond(number: Int, power: Int) -> Int {
        guard number > 0, power > 0 else {
            return 0
        }
        var returnValue = number
        
        for _ in 0..<power {
            returnValue *= number
        }

        return returnValue
    }
}
