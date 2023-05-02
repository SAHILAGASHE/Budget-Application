//
//  NSSet+Extensions.swift
//  Budget-App
//
//  Created by Sahil Agashe on 10/04/23.
//

import Foundation

extension NSSet {
    
    func toArray<T>() -> [T] {
        let array = self.map { $0 as! T}
        return array
    }
    
}

