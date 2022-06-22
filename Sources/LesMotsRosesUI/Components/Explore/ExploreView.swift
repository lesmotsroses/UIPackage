//
//  ExploreView.swift
//  
//
//  Created by Killian Sowa on 31/05/2022.
//

import SwiftUI

public struct ExploreView: View {
    var percentImage: String?
    var percentText: String?
    var text: String
    
    public init(
        percentImage: String? = nil,
        percentText: String? = nil,
        text: String = "les décors autour de vous avant de passer à la suite"
    ) {
        self.percentImage = percentImage
        self.percentText = percentText
        self.text = text
    }
    
    public var body: some View {
        ZStack {
            VStack(spacing: 200) {
                VStack(spacing: 30) {
                    Image("title_explore")
                    
                    Text(text)
                        .foregroundColor(Color.paleBrown100)
                        .font(.custom("JosefinSans-Bold", size: 38))
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .modifier(NoiseBackgroundWithPattern(theme: .dark, pattern: .explore))
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
            .previewLayout(.fixed(width: 1920, height: 1080))
    }
}
