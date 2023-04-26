//
//  WhatGimbapView.swift
//
//
//  Created by Chaeeun Shin on 2023/04/16.
//

import SwiftUI
import NavigationStack

struct WhatGimbapView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            
            ScrollView {
                Image("WhatGimbap")
                    .resizable()
                    .scaledToFit()
                    .frame(width: MyApp.screenWidth)

                VStack(alignment: .leading) {
                    Text("What is Gimbap?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(20)

                    Text("\"Gimbap\" is a popular Korean dish made of rice and various ingredients rolled in seaweed sheet.\nIt is a Korean dish that is distinct from California rolls and Japanese sushi rolls.\nIt is a popular Korean fast food that is easy and convenient to eat. It is often eaten homemade, as a road trip snack, or quick lunch at school or work.\n\nGimbap typically has various fillings, and there are different flavors and styles, such as tuna gimbap, cheese gimbap, shrimp gimbap and so on. It is often seasoned with salt, sesame oil, and sesame seeds to enhance the flavor.\nAdditionally, gimbap is known for its diverse and attractive appearance, which makes it visually appealing and enjoyable to eat.")
                        .font(.subheadline)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .lineSpacing(10)
                }
                .padding(.bottom, MyApp.screenHeight * 0.04)
                
                PushView(destination: HowGimbapView()) {
                    Text("How to make Gimbap?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .frame(width: MyApp.screenWidth * 0.75, height: 50)
                        .background(Color("ButtonColor"))
                        .cornerRadius(20)
                }
                .padding(.bottom, MyApp.screenHeight * 0.06)
            }
        }
        .ignoresSafeArea()
    }
}

struct WhatGimbapView_Previews: PreviewProvider {
    static var previews: some View {
        WhatGimbapView()
    }
}

