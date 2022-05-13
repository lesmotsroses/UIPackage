//
//  CountdownView.swift
//  
//
//  Created by Killian Sowa on 22/04/2022.
//

import SwiftUI

public struct CountdownView: View {
    //@StateObject var viewModel = CountdownViewModel()
    
    public var body: some View {
        VStack {
            ZStack {
                ZStack {
                    Text("")
                        .font(.system(size: 300))
                }
                .frame(width: 472, height: 472)
                .background(Color.purple100)
                .clipShape(Circle())
            }
        }
        #if os(iOS)
            .navigationBarHidden(true)
        #endif
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .modifier(NoiseBackground(type: .dark))
        .ignoresSafeArea()
        .onAppear {
            //viewModel.launchTimer()
        }
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView()
            .previewLayout(.fixed(width: 1920, height: 1080))
    }
}

