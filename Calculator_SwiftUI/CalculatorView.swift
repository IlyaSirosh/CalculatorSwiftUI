//
//  ContentView.swift
//  Calculator_SwiftUI
//
//  Created by Illya Sirosh on 17.11.2020.
//

import SwiftUI

struct CalculatorView: View {
    
    var label: String = "0"

    let buttons: [[CalculatorButton]] = CalculatorButton.buttons
    
    var body: some View {
        VStack {
            
           Text(label)
            ForEach(buttons, id: \.self) { (buttonsRow) in
                HStack{
                    ForEach(buttonsRow) { (button) in
                        Button(button.text, action: {
                            
                        })
                    }
                }
            }
        }
    }
    
    
    func handleAction(_ button: CalculatorButton) {
        print()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
