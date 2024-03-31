//
//  ImmersiveView.swift
//  Snowy Dice
//
//  Created by Andrew Hale on 2/2/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content, first Snow, then Die, then hopefully Snowflake
            if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle){
                content.add(scene)}
            if let diceModel = try? await Entity(named: "Die3DRev1"), let dice = diceModel.children.first?.children.first {
                dice.scale = [0.1, 0.1, 0.1]
                dice.position.y = 0.5
                dice.position.z = -1.0
                content.add(dice)
            }
        }
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
