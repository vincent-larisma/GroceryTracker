//
//  NumericButtonGroup.swift
//  GroceryTracker
//
//  Created by Vincent Angelo Larisma on 12/9/23.
//

import SwiftUI

struct NumericButtonGroupView: View {
    @Binding var calculateInput: String
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                ButtonCalculatorView(display: $calculateInput,
                                     title: "1")
                
                ButtonCalculatorView(display: $calculateInput,
                                     title: "2")
                
                ButtonCalculatorView(display: $calculateInput,
                                     title: "3")
            }
            
            HStack(spacing: 0) {
                ButtonCalculatorView(display: $calculateInput,
                                     title: "4")
                
                ButtonCalculatorView(display: $calculateInput,
                                     title: "5")
                
                ButtonCalculatorView(display: $calculateInput,
                                     title: "6")
            }
            
            HStack(spacing: 0) {
                ButtonCalculatorView(display: $calculateInput,
                                     title: "7")
                
                ButtonCalculatorView(display: $calculateInput,
                                     title: "8")
                
                ButtonCalculatorView(display: $calculateInput,
                                     title: "9")
            }
            
            HStack(spacing: 0) {
                ButtonCalculatorView(display: $calculateInput,
                                     title: ".")
                ButtonCalculatorView(display: $calculateInput,
                                     title: "0",
                                     isCustomButton: true)
            }
            
        }
    }
}
