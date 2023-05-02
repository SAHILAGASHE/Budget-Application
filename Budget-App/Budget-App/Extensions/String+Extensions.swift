//
//  String+Extensions.swift
//  Budget-App
//
//  Created by Sahil Agashe on 09/04/23.
//

import Foundation

extension String {
    
    var isNumeric: Bool {
        Double(self) != nil
    }
    
    func isGreatorThan(_ value: Double) -> Bool {
        
        guard self.isNumeric else {
            return false
        }
        
        return Double(self)! > value
    }
    
}
