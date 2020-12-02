//
//  CalculatorButton.swift
//  Calculator_SwiftUI
//
//  Created by Illya Sirosh on 02.12.2020.
//

import Foundation

enum CalculatorButton {
    case digit(Int)
    case percentage
    case sign
    case operation(String, ((Double, Double) -> Double) )
    case dot
    case equal
    case clear(Bool)
    
    var text: String {
        switch self {
        case .digit(let n):
            return String(n)
        case .percentage:
            return "%"
        case .sign:
            return "+/-"
        case .operation(let str, _):
            return str
        case .dot:
            return "."
        case .equal:
            return "="
        case .clear(let allClear):
            return allClear ? "AC": "C"
    }}
}

extension CalculatorButton: Identifiable {
    var id: String { text }
}

extension CalculatorButton: Hashable {
    static func == (lhs: CalculatorButton, rhs: CalculatorButton) -> Bool {
        return lhs.text == rhs.text
    }

    
    func hash(into hasher: inout Hasher) {
        hasher.combine(text)
    }
    
}
