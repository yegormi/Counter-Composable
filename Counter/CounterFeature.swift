//
//  CounterFeature.swift
//  Counter
//
//  Created by Yegor Myropoltsev on 15.09.2023.
//

import SwiftUI
import ComposableArchitecture

struct CounterFeature: Reducer {
    
    struct State: Equatable {
        var count = 0
    }
    
    enum Action: Equatable {
        case incrementButtonTapped
        case decrementButtonTapped
        case resetButtonTapped
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .incrementButtonTapped:
            state.count += 1
            return .none
        case .decrementButtonTapped:
            state.count -= 1
            return .none
        case .resetButtonTapped:
            state.count = 0
            return .none
        }
    }
}
