//
//  CounterApp.swift
//  Counter
//
//  Created by Yegor Myropoltsev on 15.09.2023.
//

import ComposableArchitecture
import SwiftUI

@main
struct CounterApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
      CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: CounterApp.store)
        }
    }
}
