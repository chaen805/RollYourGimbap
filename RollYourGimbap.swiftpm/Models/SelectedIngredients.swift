//
//  SelectedIngredients.swift
//
//
//  Created by Chaeeun Shin on 2023/04/17.
//

// 기본재료 선택 저장
import SwiftUI

class SelectedIngredients: ObservableObject {
    @Published var basicIngredient: [String] = []
    @Published var mainIngredient: [String] = []
}
