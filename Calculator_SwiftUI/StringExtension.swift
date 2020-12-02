//
//  StringExtension.swift
//  Calculator_SwiftUI
//
//  Created by Illya Sirosh on 02.12.2020.
//

import Foundation

extension String {
    
    var digitsCount: Int {
        self.reduce(0) { (sum, char) -> Int in
            return char.isNumber ? sum + 1 : sum
        }
    }
    
}
