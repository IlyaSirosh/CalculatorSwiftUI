//
//  Calculator.swift
//  Calculator_SwiftUI
//
//  Created by Illya Sirosh on 17.11.2020.
//

import Foundation



enum CalculatorButton {
    case digit(Int)
    case percentage
    case sign
    case operation(String, ((Double, Double) -> Double) )
    case dot
    case equal
    case clear
    
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
        case .clear:
            return "AC"
    }}
    
    static let buttons: [[CalculatorButton]] = [
        [.clear, .sign, .percentage, .operation("/", /)],
        [.digit(7), .digit(8), .digit(9), .operation("*", *)],
        [.digit(4), .digit(5), .digit(6), .operation("-", -)],
        [.digit(1), .digit(2), .digit(3), .operation("+", +)],
        [.digit(0), .dot, .equal],
    ]
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
