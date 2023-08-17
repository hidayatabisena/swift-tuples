//
//  MonokromColorView.swift
//  Monokrom
//
//  Created by Hidayat Abisena on 17/08/23.
//

import SwiftUI

struct MonokromColorView: View {
    let color: Color
    let colorName: String
    
    var body: some View {
        ZStack {
            color.edgesIgnoringSafeArea(.all)
            Text(colorName)
                .font(.headline)
                .foregroundStyle(Color.yellow)
                .padding()
        }
    }
}

#Preview {
    MonokromColorView(color: Color(uiColor: UIColor.charcoal), colorName: "Charcoal")
}
