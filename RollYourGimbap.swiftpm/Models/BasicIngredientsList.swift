//
//  BasicIngredientsList.swift
//
//
//  Created by Chaeeun Shin on 2023/04/17.
//

import SwiftUI

enum BasicIngredientsList: String, CaseIterable {
    case carrot = "Carrot"
    case radish = "Radish"
    case burdock = "Burdock"
    case egg = "Egg"
    case spinach = "Spinach"
    case ham = "Ham"
    
    var textItem: String {
        switch self {
        case .carrot: return "shredded carrots"
        case .radish: return "pickled radish"
        case .burdock: return "stewed burdock"
        case .egg: return "egg omelette"
        case .spinach: return "blanched spinach"
        case .ham: return "ham for gimbap"
        }
    }
    
    var finishedCircle: some View {
        switch self {
        case .carrot:
            return AnyView (
                Circle()
                    .frame(width: 60)
                    .foregroundColor(Color(rawValue))
            )
        case .radish:
            return AnyView (
                Circle()
                    .frame(width: 60)
                    .foregroundColor(Color(rawValue))
            )
        case .burdock:
            return AnyView (
                Circle()
                    .frame(width: 60)
                    .foregroundColor(Color(rawValue))
            )
        case .egg:
            return AnyView (
                Circle()
                    .frame(width: 60)
                    .foregroundColor(Color(rawValue))
            )
        case .spinach:
            return AnyView (
                Circle()
                    .frame(width: 60)
                    .foregroundColor(Color(rawValue))
            )
        case .ham:
            return AnyView (
                Circle()
                    .frame(width: 60)
                    .foregroundColor(Color(rawValue))
            )
        }
    }
}
