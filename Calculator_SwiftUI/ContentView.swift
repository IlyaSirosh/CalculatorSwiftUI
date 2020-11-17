//
//  ContentView.swift
//  Calculator_SwiftUI
//
//  Created by Illya Sirosh on 17.11.2020.
//

import SwiftUI

struct CalculatorView: View {

    
    var body: some View {
        VStack {
            Text("0")
        
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("9")
                })
            }
        }
    }
    
    
    func handleAction() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
