//
//  HowGimbapView.swift
//
//
//  Created by Chaeeun Shin on 2023/04/16.
//

import SwiftUI
import NavigationStack

struct HowGimbapView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            
            ScrollView {
                Image("HowGimbap")
                    .resizable()
                    .scaledToFit()
                    .frame(width: MyApp.screenWidth)

                VStack(alignment: .leading) {
                    Text("How to make gimbap")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(20)
                    
                    VStack(alignment: .leading, spacing: 30) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("1. Prepare the ingredients")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                            
                            Text("Gimbap typically includes sticky rice, seaweed sheet, pickled radish, shredded carrots, spinach, egg omelet, ham, stewed burdock, etc. \nPrepare each ingredients by cutting them into appropriate sizes.")
                                .font(.subheadline)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .lineSpacing(10)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("2. Place rice on seaweed")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                            
                            Text("Lay out the seaweed flat and evenly spread rice on top, leaving a small margin along the edges.")
                                .font(.subheadline)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .lineSpacing(10)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("3. Add ingredients")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                            
                            Text("Arrange the prepared ingredients on top of the rice in the desired shape and size. You can arrange them in various styles to suit your preference.")
                                .font(.subheadline)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .lineSpacing(10)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("4. Roll up the Gimbap")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                            
                            Text("Roll up the gimbap from closest edge, applying gentle pressure to make it stick. Keep rolling it forward to form a tight roll.")
                                .font(.subheadline)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .lineSpacing(10)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("5. Cut Gimbap into slices")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                            
                            Text("Hold the rolled Gimbap and use a knife to cut it into desired size. You have completed your Gimbap!")
                                .font(.subheadline)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .lineSpacing(10)
                        }
                    }
                }
                .padding(.bottom, MyApp.screenHeight * 0.04)
                
                PushView(destination: ChooseBasicView()) {
                    Text("Roll Your GIMBAP!")
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

struct HowGimbapView_Previews: PreviewProvider {
    static var previews: some View {
        HowGimbapView()
    }
}
