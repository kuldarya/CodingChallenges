//
//  LeetCodeChallenges.swift
//  CodingChallenges
//

import Foundation

final class LeetCodeChallenges {
    
    init() {}
    
    /*
     LeetCode: Two Sum.
     
     Given an array of integers nums and an integer target,
     return indices of the two numbers such that they add up to target.
     You may assume that each input would have exactly one solution,
     and you may not use the same element twice.
     You can return the answer in any order.
     */
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for index in 0..<nums.count {
            let value = nums[index]
            let remainder = target - value
            if let anotherIndex = dict[remainder] {
                return [anotherIndex, index]
            }
            dict[value] = index
        }
        return [-1, -1]
    }
    
    /*
     LeetCode: Longest Common Prefix
     
     Write a function to find the longest common prefix string amongst an array of strings.
     If there is no common prefix, return an empty string "".
     */
    func longestCommonPrefix(in strings: [String]) -> String {
        // First string from array against which we compare other strings
        var prefix = strings[0]
        
        for string in strings {
            while !string.hasPrefix(prefix) {
                prefix.removeLast()
                if prefix.isEmpty {
                    return ""
                }
            }
        }
        return prefix
    }
}
