//
//  ContentView.swift
//  Calculator_SwiftUI
//
//  Created by Illya Sirosh on 17.11.2020.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var label: String = "0"

    let buttons: [[CalculatorButtonModel]] = CalculatorButtonModel.buttons
    
    struct Const {
        static let spacing: CGFloat = 15.0
    }
    
    fileprivate func displayLabel(text: String) -> Text {
        return Text(text)
            .font(.system(size: 94))
            .foregroundColor(.white)
    }
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea(.all)
            
            VStack(alignment: .trailing, spacing: Const.spacing){
                Spacer()
                displayLabel(text: label)
                ForEach(buttons, id: \.self) { (buttonsRow) in
                    HStack(alignment: .center, spacing: Const.spacing ){
                        ForEach(buttonsRow) { (buttonModel) in
                            calculatorButton(buttonModel)
                        }
                    }
                }
            }.padding(.bottom, Const.spacing)
        }
    }
    
    
    private func handleAction(_ button: CalculatorButtonModel) {
        print(button.text)
    }
    
    private func calculatorButton(_ buttonModel: CalculatorButtonModel) -> some View {
        Button(action: {
            self.handleAction(buttonModel)
        }) {
            Text(buttonModel.text)
                .frame(width: self.getButtonWidth(for: buttonModel), height: buttonWidth)
                .background(self.getBackgroundColor(for: buttonModel))
                .foregroundColor(self.getForegroundColor(for: buttonModel))
                .clipShape(RoundedRectangle(cornerRadius: buttonWidth))
                .font(.title)
        }

    }
    
    private var buttonWidth: CGFloat {
        ( screenWidth / 4) - Const.spacing
    }
    
    private var screenWidth: CGFloat {
        (UIScreen.screens.first?.bounds.width ?? 0) - 2*Const.spacing
    }
    
    private var screenHeight: CGFloat {
        (UIScreen.screens.first?.bounds.height ?? 0) - 2*Const.spacing
    }
    
    private func getButtonWidth(for button: CalculatorButtonModel) -> CGFloat{
        if button == .digit(0) {
            return 2*buttonWidth + Const.spacing
        } else {
            return buttonWidth
        }
    }
    
    private func getBackgroundColor(for button: CalculatorButtonModel) -> Color {
        switch button {
        case .operation(_, _), .equal:
            return .orange
        case .clear, .sign, .percentage:
            return .gray
        default:
            return color(r: 51, g: 51, b: 51)
        }
    }
    
    private func color(r: Double, g: Double, b: Double) -> Color {
        let red = r / 255.0
        let green = g / 255.0
        let blue = b / 255.0
        return Color(.sRGB, red: red, green: green, blue: blue, opacity: 1)
    }
    
    private func getForegroundColor(for button: CalculatorButtonModel) -> Color {
        switch button {
        case .clear, .sign, .percentage:
            return .black
        default:
            return .white
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
