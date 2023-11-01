//
//  FrameworkSingleView.swift
//  Framework Explainer App
//
//  Created by Ronan Clayton on 01/11/2023.
//

import SwiftUI

struct FrameworkSingleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding(8)
    }
}

#Preview {
    FrameworkSingleView(framework: MockData.sampleFramework)
}
