//
//  Snowy_DiceApp.swift
//  Snowy Dice
//
//  Created by Andrew Hale on 2/2/24.
//

import SwiftUI

@main
struct Snowy_DiceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
