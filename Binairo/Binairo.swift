//
//  Binairo.swift
//  Binairo
//
//  Created by Gertjan Reynaert on 10/08/14.
//  Copyright (c) 2014 Gertjan Reynaert. All rights reserved.
//

import Foundation

class Binairo {
    var dimX = 0
    var dimY = 0
    var rows: [Row] = []
    var invertedRows: [Row] = []
    
    init(dimensionX: Int = 10, dimensionY: Int = 10) {
        dimX = dimensionX
        dimY = dimensionY
    }
    
    func isValid() -> Bool {
        var valid = true
        
        for row in rows {
            if(!row.isValid()) {
                valid = false;
                break
            }
        }
        
        return valid && !containsEqualRows() ? true : false
    }
    
    func containsEqualRows() -> Bool {
        for (index, row) in enumerate(rows) {
            if row.equals(rows[index+1]) {
                return true
            }
        }
        
        return false
    }
    
    func addRow(row: Row) {
        rows.append(row)
    }
    
    func getArray() -> [Row] {
        return rows
    }
}