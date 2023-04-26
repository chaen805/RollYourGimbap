//
//  StartView.swift
//  RollYourGimbap
//
//  Created by Chaeeun Shin on 2023/04/16.
//

import SwiftUI
import NavigationStack

struct StartView: View {
    var body: some View {
        NavigationStackView {
            ZStack {
                Color("BackgroundColor")
                
                VStack {
                    Text("Roll Your\nGIMBAP!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.top, MyApp.screenHeight * 0.18)
                    Spacer()
                    Image("MainGimbap")
                        .resizable()
                        .scaledToFit()
                        .frame(width: MyApp.screenWidth * 0.6)
                    Spacer()
                    
                    PushView(destination: WhatGimbapView()) {
                        Text("What is Gimbap?")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: MyApp.screenWidth * 0.75, height: 50)
                            .background(Color("ButtonColor"))
                            .cornerRadius(20)
                    }
                    .padding(.bottom, 15)
                    
                    PushView(destination: ChooseBasicView()) {
                        Text("Make your Gimbap")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(width: MyApp.screenWidth * 0.75, height: 50)
                            .background(Color("ButtonColor"))
                            .cornerRadius(20)
                    }
                    .padding(.bottom, MyApp.screenHeight * 0.12)
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
