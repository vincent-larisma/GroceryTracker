//
//  OperatorButtonGroup.swift
//  GroceryTracker
//
//  Created by Vincent Angelo Larisma on 12/9/23.
//

import SwiftUI

struct OperatorButtonGroupView: View {
    
    @Binding var operatorSelected: String
    
    var body: some View {
        VStack(spacing: 0) {
            ButtonCalculatorView(display: $operatorSelected, title: "/")
            ButtonCalculatorView(display: $operatorSelected, title: "x")
            ButtonCalculatorView(display: $operatorSelected, title: "-")
            ButtonCalculatorView(display: $operatorSelected, title: "+")
            ButtonCalculatorView(display: $operatorSelected, title: "=")
        }
    }
}
