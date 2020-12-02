//
//  CalculatorViewModel.swift
//  Calculator_SwiftUI
//
//  Created by Illya Sirosh on 02.12.2020.
//

import Foundation

protocol CalculatorViewModel: ObservableObject {
    var currentOp: CalculatorButton? { get }
    var resultLabel: String { get }
    var digitLimit: Int {get}
    var buttons: [[CalculatorButton]] { get }

    func press(_ button: CalculatorButton)
}
