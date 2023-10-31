//
//  FrameworkGridView.swift
//  Framework Explainer App
//
//  Created by Ronan Clayton on 30/10/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){
                        framework in
                        FrameworkSingleView(framework: framework)
                        
                        
                    }
                }
                .navigationTitle("🍎 Apple Frameworks")
            }
        }
        }
    }

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}

struct FrameworkSingleView: View {
    let framework: Framework
    
    var body: some View {
        
        VStack(spacing: 8){
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding(10)
        
    }
}
