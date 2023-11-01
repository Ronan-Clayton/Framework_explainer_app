//
//  FrameworkGridViewModel.swift
//  Framework Explainer App
//
//  Created by Ronan Clayton on 01/11/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    @Published var isShowingDetailView = false
    var selectedFramework: Framework?{
        didSet {isShowingDetailView = true}
    }
    
}
