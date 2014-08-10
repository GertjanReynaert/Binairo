//
//  Row.swift
//  Binairo
//
//  Created by Gertjan Reynaert on 10/08/14.
//  Copyright (c) 2014 Gertjan Reynaert. All rights reserved.
//

import Foundation

class Row {
    var row: [Int] = []
    
    init(fromArray array: [Int]) {
        row = array
    }
    
    func isValid() -> Bool {
        var sum = 0
        var validOrder = true
        var validChar = true
        
        var prev = -1
        var prevDidEqualsPrev2 = false
        
        for number in row {
            if isValidChar(number) {
                sum += number
                if number == prev && prevDidEqualsPrev2 {
                    validOrder = false
                    break
                } else if number == prev{
                    prevDidEqualsPrev2 = true
                } else {
                    prevDidEqualsPrev2 = false
                }
                prev = number
            } else {
                validChar = false
            }
        }
        
        return isValidSum(sum) && validOrder && validChar ? true : false
    }
    
    func isValidSum(sum: Int) -> Bool {
        return sum == row.count/2 ? true : false
    }
    
    func isValidChar(char: Int) -> Bool {
        return char == 1 || char == 0 ? true : false
    }
    
    func getNumberAtIndex(index: Int) -> Int {
        return row[index]
    }
    
    func equals(otherRow: Row) -> Bool {
        var equal = true
        
        for (index, value) in enumerate(row) {
            if value != otherRow.getNumberAtIndex(index) {
                equal = false
                break
            }
        }
        
        return equal
    }
}