//
//  FrameworkDetailView.swift
//  Framework Explainer App
//
//  Created by Ronan Clayton on 01/11/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{} label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 22, height: 22)
                }
            }
            .padding()
            Spacer()
            FrameworkSingleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            FrameworksButton(title: "Learn More")
                .padding(.bottom, 30)
            }
        }
    }
#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}


//struct FrameworkDetailView: View {
//    
//    
//    var body: some View {
//        VStack{
//            Spacer()
//            VStack{
//                Image("swiftui")
//                    .resizable()
//                    .frame(width: 90, height: 90)
//                Text("SwiftUI")
//                    .font(.title2)
//                    .fontWeight(.semibold)
//                    .scaledToFit()
//                    .minimumScaleFactor(0.6)
//            }
//            Spacer()
//            Text("SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written.")
//                .padding(15)
//            Spacer()
//            Button{} label: {
//                Text("Learn More")
//                    .frame(width: 280, height: 50)
//                    .background(.red.gradient)
//                    .foregroundStyle(.white)
//                    .font(.system(size: 20, weight: .bold))
//                    .cornerRadius(10.0)
//            }
//            Spacer()
//        }
//    }
//}
