//
//  Frameworks Button.swift
//  Framework Explainer App
//
//  Created by Ronan Clayton on 01/11/2023.
//

import SwiftUI

struct FrameworksButton: View {
    
    var title: String
    
    var body: some View {
        Button{} label: {
            Text(title)
                .frame(width: 280, height: 50)
                .background(.red.gradient)
                .foregroundStyle(.white)
                .font(.title2)
                .fontWeight(.semibold)
                .cornerRadius(10.0)
        }
    }
}
#Preview {
    FrameworksButton(title: "Learn More")
}
