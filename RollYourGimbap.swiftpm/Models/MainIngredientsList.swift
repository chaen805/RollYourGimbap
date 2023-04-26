//
//  MainIngredientsList.swift
//
//
//  Created by Chaeeun Shin on 2023/04/17.
//

import SwiftUI

enum MainIngredientsList: String, CaseIterable {
    case tuna = "Tuna"
    case shrimp = "Shrimp"
    case cheese = "Cheese"
    
    var textItem: String {
        switch self {
        case .tuna: return "tuna mayo"
        case .shrimp: return "shrimp fritters"
        case .cheese: return "slice cheese"
        }
    }
    
    var finishedCircle: some View {
        switch self {
        case .tuna:
            return AnyView (ZStack {
                Circle()
                    .frame(width: 130)
                    .foregroundColor(Color(hex: "0A3C02"))
                Circle()
                    .frame(width: 110)
                    .foregroundColor(Color(hex: "E8CDB5"))
            })
        case .shrimp:
            return AnyView (ZStack {
                Circle()
                    .frame(width: 130)
                    .foregroundColor(Color(hex: "F2BB2A"))
                Circle()
                    .frame(width: 110)
                    .foregroundColor(Color(hex: "FFFCEB"))
            })
        case .cheese:
            return AnyView(ZStack {
                Circle()
                    .frame(width: 130)
                    .foregroundColor(Color(hex: "EFBD7D"))
            })
        }
    }
}

