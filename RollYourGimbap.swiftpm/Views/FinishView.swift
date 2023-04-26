//
//  FinishView.swift
//
//
//  Created by Chaeeun Shin on 2023/04/16.
//

import SwiftUI
import NavigationStack

struct FinishView: View {
    @Binding var mainIngredients: [String]
    @Binding var basicIngredients: [String]
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            
            VStack {
                FinishedGimbapView(mainIngredients: mainIngredients, basicIngredients: basicIngredients)
                .padding(.top, MyApp.screenHeight * 0.18)
                
                Text("Your choice is")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.bottom, MyApp.screenHeight * 0.01)

                if mainIngredients.isEmpty {
                    Text("Basic")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                } else {
                    Text(mainIngredients[0])
                        .font(.title)
                        .fontWeight(.heavy)
                }
                
                Text("GIMBAP")
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Spacer()
                
                PopView(destination: .root) {
                    Text("restart")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("ButtonColor"))
                }
                .padding(.bottom, MyApp.screenHeight * 0.06)
            }
        }
        .ignoresSafeArea()
    }
}

struct FinishedGimbapView: View {
    var mainIngredients: [String]
    var basicIngredients: [String]
    let coordinate = [(-80, -30), (-80, 30), (-35, -70), (-35, 70), (25, -75), (25, 75)]

    var body: some View {
        ZStack {
            Image("EmptyGimbap")
                .resizable()
                .scaledToFit()
                .frame(width: 350)
            if !mainIngredients.isEmpty {
                if mainIngredients.first! == "Tuna" {
                    MainIngredientsList.tuna.finishedCircle
                }
                else if mainIngredients.first! == "Cheese" {
                    MainIngredientsList.cheese.finishedCircle
                } else if mainIngredients.first! == "Shrimp" {
                    MainIngredientsList.shrimp.finishedCircle
                }
            }
            ForEach(0..<basicIngredients.count, id: \.self) { i in
                BasicIngredientsList(rawValue: basicIngredients[i])!.finishedCircle
                    .offset(x: CGFloat(coordinate[i].0), y: CGFloat(coordinate[i].1))
            }
        }
    }
}
