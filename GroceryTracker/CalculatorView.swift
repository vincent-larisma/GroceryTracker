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
//            Color.black
//                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                TextField("", text: $calculateInput)
                    .frame(width: 100, height: 100)
                    .disabled(true)
                
                HStack (spacing: 0) {
                    NumericButtonGroupView(calculateInput: $calculateInput)
                    OperatorButtonGroupView(operatorSelected: $calculateInput)
                }
            }
        }
    }
}



#Preview {
    CalculatorView()
}

