//
//  ChooseBasicView.swift
//
//
//  Created by Chaeeun Shin on 2023/04/16.
//

import SwiftUI
import NavigationStack

struct ChooseBasicView: View {
    @ObservedObject var ingredient = SelectedIngredients()
    @State var isPressed1 = false
    @State var isPressed2 = false
    @State var isPressed3 = false
    @State var isPressed4 = false
    @State var isPressed5 = false
    @State var isPressed6 = false
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .onAppear{
                    ingredient.basicIngredient.removeAll()
                    ingredient.mainIngredient.removeAll()
                }
            
            VStack {
                VStack(spacing: 20) {
                    Text("Choose one or more ingredients")
                        .font(.subheadline)
                        .fontWeight(.medium)
                    HStack {
                        Button {
                            isPressed1.toggle()
                            if !ingredient.basicIngredient.contains(BasicIngredientsList.carrot.rawValue) {
                                ingredient.basicIngredient.append(BasicIngredientsList.carrot.rawValue)
                            } else {
                                ingredient.basicIngredient.remove(at: ingredient.basicIngredient.firstIndex(of: BasicIngredientsList.carrot.rawValue)!)
                            }
                        } label: {
                            SelectButtonView(ingredient: BasicIngredientsList.carrot.textItem)
                                .opacity(isPressed1 ? 1 : 0.5)
                        }
                        Button {
                            isPressed2.toggle()
                            if !ingredient.basicIngredient.contains(BasicIngredientsList.radish.rawValue) {
                                ingredient.basicIngredient.append(BasicIngredientsList.radish.rawValue)
                            } else {
                                ingredient.basicIngredient.remove(at: ingredient.basicIngredient.firstIndex(of: BasicIngredientsList.radish.rawValue)!)
                            }
                        } label: {
                            SelectButtonView(ingredient: BasicIngredientsList.radish.textItem)
                                .opacity(isPressed2 ? 1 : 0.5)
                        }
                    }
                    
                    HStack {
                        Button {
                            isPressed3.toggle()
                            if !ingredient.basicIngredient.contains(BasicIngredientsList.burdock.rawValue) {
                                ingredient.basicIngredient.append(BasicIngredientsList.burdock.rawValue)
                            } else {
                                ingredient.basicIngredient.remove(at: ingredient.basicIngredient.firstIndex(of: BasicIngredientsList.burdock.rawValue)!)
                            }
                        } label: {
                            SelectButtonView(ingredient: BasicIngredientsList.burdock.textItem)
                                .opacity(isPressed3 ? 1 : 0.5)
                        }
                        Button {
                            isPressed4.toggle()
                            if !ingredient.basicIngredient.contains(BasicIngredientsList.egg.rawValue) {
                                ingredient.basicIngredient.append(BasicIngredientsList.egg.rawValue)
                            } else {
                                ingredient.basicIngredient.remove(at: ingredient.basicIngredient.firstIndex(of: BasicIngredientsList.egg.rawValue)!)
                            }
                        } label: {
                            SelectButtonView(ingredient: BasicIngredientsList.egg.textItem)
                                .opacity(isPressed4 ? 1 : 0.5)
                        }
                    }
                    
                    HStack {
                        Button {
                            isPressed5.toggle()
                            if !ingredient.basicIngredient.contains(BasicIngredientsList.spinach.rawValue) {
                                ingredient.basicIngredient.append(BasicIngredientsList.spinach.rawValue)
                            } else {
                                ingredient.basicIngredient.remove(at: ingredient.basicIngredient.firstIndex(of: BasicIngredientsList.spinach.rawValue)!)
                            }
                        } label: {
                            SelectButtonView(ingredient: BasicIngredientsList.spinach.textItem)
                                .opacity(isPressed5 ? 1 : 0.5)
                        }
                        Button {
                            isPressed6.toggle()
                            if !ingredient.basicIngredient.contains(BasicIngredientsList.ham.rawValue) {
                                ingredient.basicIngredient.append(BasicIngredientsList.ham.rawValue)
                            } else {
                                ingredient.basicIngredient.remove(at: ingredient.basicIngredient.firstIndex(of: BasicIngredientsList.ham.rawValue)!)
                            }
                        } label: {
                            SelectButtonView(ingredient: BasicIngredientsList.ham.textItem)
                                .opacity(isPressed6 ? 1 : 0.5)
                        }
                    }
                }
                .padding(.top, MyApp.screenHeight * 0.1)
                
                Spacer()

                ZStack {
                    Image("BasicGimbap")
                        .resizable()
                        .scaledToFit()
                        .frame(height: MyApp.screenHeight * 0.4)
                    
                    VStack(spacing: 0) {
                        Spacer()
                        ForEach(ingredient.basicIngredient.reversed(), id: \.self) { i in
                            Image(i)
                                .resizable()
                                .scaledToFit()
                                .frame(height: MyApp.screenHeight * 0.02)
                        }
                    }
                    .padding(.bottom, MyApp.screenHeight * 0.16)
                }
                
                PushView(destination: ChooseMainView(basicIngredients: $ingredient.basicIngredient)) {
                    Text("Next")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: MyApp.screenWidth * 0.8, height: 50)
                        .background(Color("ButtonColor"))
                        .cornerRadius(20)
                        .padding(.bottom, MyApp.screenHeight * 0.06)
                }
            }
        }
        .ignoresSafeArea()
    }
}

// Menu Button
struct SelectButtonView: View {
    let ingredient: String
    var body: some View {
        Text(ingredient)
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            .frame(width: MyApp.screenWidth * 0.4, height: 50)
            .background(Color("ButtonColor").opacity(0.8))
            .cornerRadius(20)
    }
}

struct ChooseBasicView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseBasicView()
    }
}
