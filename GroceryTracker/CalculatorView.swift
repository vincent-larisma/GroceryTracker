//
//  CalculatorView.swift
//  GroceryTracker
//
//  Created by Vincent Angelo Larisma on 11/27/23.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var calculateInput: String = ""

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                TextField("", text: $calculateInput)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                HStack {
                    ButtonCalculatorView(display: $calculateInput, 
                                         title: "1")
                    
                    ButtonCalculatorView(display: $calculateInput,
                                         title: "2")
                    
                    ButtonCalculatorView(display: $calculateInput,
                                         title: "3")
                }
                
                HStack {
                    ButtonCalculatorView(display: $calculateInput,
                                         title: "4")
                    
                    ButtonCalculatorView(display: $calculateInput,
                                         title: "5")
                    
                    ButtonCalculatorView(display: $calculateInput,
                                         title: "6")
                }
                
                HStack {
                    ButtonCalculatorView(display: $calculateInput,
                                         title: "7")
                    
                    ButtonCalculatorView(display: $calculateInput,
                                         title: "8")
                    
                    ButtonCalculatorView(display: $calculateInput,
                                         title: "9")
                }
            }
        }
    }
}

struct ButtonCalculatorView: View {
    private enum CustomButtonLayout: CGFloat {
        case dimension = 80
    }
    
    @Binding var display: String
    var title: String
    
    var body: some View {
        Button(action: addInput) {
            Text(title)
                .fontWeight(.bold)
                .font(.title)
                .frame(width: CustomButtonLayout.dimension.rawValue, height: CustomButtonLayout.dimension.rawValue)
                .background(.secondary)
                .foregroundColor(.white)
                
        }
    }
    
    func addInput() {
        display += title
    }
}

#Preview {
    CalculatorView()
}

