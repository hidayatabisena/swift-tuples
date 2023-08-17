//
//  MerahPutihTintShades.swift
//  Monokrom
//
//  Created by Hidayat Abisena on 17/08/23.
//

import SwiftUI

struct MerahPutihTintShades: View {
    let colors: [(color: UIColor, name: String)] = [
        (.permanentGeraniumLake, "Permanent Geranium Lake"),
        (.cgRed, "Cg Red"),
        (.carminePink, "Carmine Pink"),
        (.flamingo, "Flamingo"),
        (.froly, "Froly"),
        (.lightCoral, "Light Coral"),
        (.seaPink, "Sea Pink"),
        (.beautyBush, "Beauty Bush"),
        (.coralCandy, "Coral Candy"),
        (.wispPink, "Wisp Pink"),
        (.white, "White"),
    ]
    var body: some View {
        VStack(spacing: 0) {
            ForEach(colors, id: \.name) { item in
                MonokromColorView(color: Color(item.color), colorName: item.name)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    MerahPutihTintShades()
}
