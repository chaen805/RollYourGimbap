//
//  ChooseMainView.swift
//
//
//  Created by Chaeeun Shin on 2023/04/16.
//

import SwiftUI
import NavigationStack

struct ChooseMainView: View {
    @Binding var basicIngredients: [String]
    @ObservedObject var ingredient = SelectedIngredients()
    @State var isPressed1 = false
    @State var isPressed2 = false
    @State var isPressed3 = false
    @State var isPressed4 = true
    @State private var pushRollButton = false
    @State private var isRolling = false
    @State private var goNext = false
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            
            VStack {
                VStack(spacing: 20) {
                    Text("Choose only one ingredient")
                        .font(.subheadline)
                        .fontWeight(.medium)
                    HStack {
                        Button {
                            isPressed1.toggle()
                            isPressed2 = false
                            isPressed3 = false
                            isPressed4 = false
                            if !ingredient.mainIngredient.isEmpty {
                                ingredient.mainIngredient.removeFirst()
                            }
                            ingredient.mainIngredient.append(MainIngredientsList.tuna.rawValue)
                        } label: {
                            SelectButtonView(ingredient: MainIngredientsList.tuna.textItem)
                                .opacity(isPressed1 ? 1 : 0.5)
                        }
                        Button {
                            isPressed1 = false
                            isPressed2.toggle()
                            isPressed3 = false
                            isPressed4 = false
                            if !ingredient.mainIngredient.isEmpty {
                                ingredient.mainIngredient.removeAll()
                            }
                            ingredient.mainIngredient.append(MainIngredientsList.cheese.rawValue)
                        } label: {
                            SelectButtonView(ingredient: MainIngredientsList.cheese.textItem)
                                .opacity(isPressed2 ? 1 : 0.5)
                        }
                    }
                    
                    HStack {
                        Button {
                            isPressed1 = false
                            isPressed2 = false
                            isPressed3.toggle()
                            isPressed4 = false

                            if !ingredient.mainIngredient.isEmpty {
                                ingredient.mainIngredient.removeAll()
                            }
                            ingredient.mainIngredient.append(MainIngredientsList.shrimp.rawValue)
                        } label: {
                            SelectButtonView(ingredient: MainIngredientsList.shrimp.textItem)
                                .opacity(isPressed3 ? 1 : 0.5)
                        }
                        Button {
                            isPressed1 = false
                            isPressed2 = false
                            isPressed3 = false
                            isPressed4.toggle()
                            ingredient.mainIngredient.removeAll()
                        } label: {
                            SelectButtonView(ingredient: "None")
                                .opacity(isPressed4 ? 1 : 0.5)
                        }
                    }
                    
                    HStack {
                        Button {
                        } label: {
                            SelectButtonView(ingredient: "temp")
                                .opacity(0)
                            
                        }
                        Button {
                        } label: {
                            SelectButtonView(ingredient: "temp")
                                .opacity(0)
                        }
                    }
                }
                .padding(.top, MyApp.screenHeight * 0.1)
                
                Spacer()

                if !pushRollButton {
                    ZStack {
                        Image("BasicGimbap")
                            .resizable()
                            .scaledToFit()
                            .frame(height: MyApp.screenHeight * 0.4)
                        
                        VStack(spacing: 0) {
                            Spacer()
                            ForEach(ingredient.mainIngredient, id: \.self) { i in
                                Image(i)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: MyApp.screenHeight * 0.035)
                            }
                            ForEach(basicIngredients.reversed(), id: \.self) { i in
                                Image(i)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: MyApp.screenHeight * 0.02)
                            }
                        }
                        .padding(.bottom, MyApp.screenHeight * 0.16)
                    }
                } else {
                    if !isRolling {
                        Image("RollingGimbap")
                            .resizable()
                            .scaledToFit()
                            .frame(height: MyApp.screenHeight * 0.4)
                        
                    } else {
                        Image("FinishedGimbap")
                            .resizable()
                            .scaledToFit()
                            .frame(height: MyApp.screenHeight * 0.4)
                    }
                }
                if !goNext {
                    Button {
                        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
                            pushRollButton = true
                        }
                        Timer.scheduledTimer(withTimeInterval: 1.2, repeats: false) { _ in
                            isRolling = true
                        }
                        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { _ in
                            goNext = true
                        }
                    } label: {
                        Text("Roll Your Gimbap!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: MyApp.screenWidth * 0.8, height: 50)
                            .background(Color("ButtonColor"))
                            .cornerRadius(20)
                            .padding(.bottom, MyApp.screenHeight * 0.06)
                    }
                } else {
                    PushView(destination: FinishView(mainIngredients: $ingredient.mainIngredient, basicIngredients: self.$basicIngredients)) {
                        Text("Cut your Gimbap!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: MyApp.screenWidth * 0.8, height: 50)
                            .background(Color("ButtonColor"))
                            .cornerRadius(20)
                            .opacity(isAnimating ? 0 : 1.0)
                            .padding(.bottom, MyApp.screenHeight * 0.06)
                    }
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { _ in
                            isAnimating.toggle()
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}
