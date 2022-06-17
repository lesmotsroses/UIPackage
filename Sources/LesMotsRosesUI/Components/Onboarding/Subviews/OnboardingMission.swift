//
//  OnboardingMission.swift
//  
//
//  Created by Killian Sowa on 25/04/2022.
//

import SwiftUI

public struct OnboardingMission: View {
    var missionNumber: Int? = nil
    let missionIllu: String
    @State var bouncing: Bool = false
    
    public init(
        missionNumber: Int?,
        missionIllu: String
    ) {
        self.missionNumber = missionNumber
        self.missionIllu = missionIllu
    }
    
    public var body: some View {
        VStack(spacing: 30) {
            HStack {
                Image("mission_title")
            }
            
            Image(missionIllu)
                .padding(.bottom, 100)
                .offset(y: bouncing ? -30 : 0)
                .animation(Animation.easeInOut(duration: 2.0).repeatForever(autoreverses: true))
            
            Text("Passons au détail de votre mission : je vous propose de réaliser une première enquête...")
                .font(.josefinInfo)

//            VStack {
//                Text(missionText)
//                    .padding(.horizontal, 20)
//                    .padding(.vertical, 30)
//                    .font(.josefinInfo)
//                    .foregroundColor(Color.dark100)
//                    .multilineTextAlignment(TextAlignment.center)
//                    .frame(width: 821)
//                    .overlay(RoundedRectangle(cornerRadius: 16)
//
//                                .strokeBorder(Color.dark100, lineWidth: 2))
                
//                HStack {
//                    Text("Vous avez \(timeAvailable) minutes")
//                        .padding(20)
//                        .background(Color.paleBrown100)
//                        .cornerRadius(16)
//                        .overlay(RoundedRectangle(cornerRadius: 16)
//                                    .strokeBorder(Color.MainTheme.getGradientByName(name: "gradientOrangePurple")!, lineWidth: 2)
//                                    .rotationEffect(Angle(degrees: 0)))
//                        .font(.josefinBody)
//                        .foregroundColor(.dark100)
//                }.offset(x: -380, y: -5)
//                    .rotationEffect(Angle(degrees: 2.5))
                    
//            }
        }
        .onAppear {
            self.bouncing.toggle()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .modifier(NoiseBackgroundWithPattern(theme: .light, pattern: .onboardingMission))
    }
}

struct OnboardingMission_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingMission(
            missionNumber: 1,
            missionIllu: ""
        )
            .previewLayout(.fixed(width: 1920, height: 1080))
    }
}
