//
//  ButtonView.swift
//  GroceryTracker
//
//  Created by Vincent Angelo Larisma on 12/9/23.
//

import SwiftUI

struct ButtonCalculatorView: View {
    private enum CustomButtonLayout: CGFloat {
        case dimension = 80
    }
    
    @Binding var display: String
    var title: String
    
    var isCustomButton: Bool?
    
    var body: some View {
        Button(action: addInput) {
            Text(title)
                .fontWeight(.bold)
                .font(.title)
                .frame(width: isCustomButton ?? false ? (CustomButtonLayout.dimension.rawValue * 2) : CustomButtonLayout.dimension.rawValue, height: CustomButtonLayout.dimension.rawValue)
                .background(.orange)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            
        }
    }
    
    func addInput() {
        display += title
    }
}

#Preview {
    ButtonCalculatorView(display: .constant(""), title: "1")
}
