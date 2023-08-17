//
//  MonokromView.swift
//  Monokrom
//
//  Created by Hidayat Abisena on 17/08/23.
//

import SwiftUI

struct MonokromView: View {
    let colors: [(color: UIColor, name: String)] = [
        (.nightRider, "Night Rider"),
        (.cannonBlack, "Cannon Black"),
        (.outerSpace, "Outer Space"),
        (.granite, "Granite"),
        (.iron, "Iron"),
        (.lead, "Lead"),
        (.asphalt, "Asphalt"),
        (.oil, "Oil"),
        (.charcoal, "Charcoal"),
        (.eerieBlack, "Eerie Black"),
        (.jaguarBlack, "Jaguar Black"),
        (.codGray, "Cod Gray"),
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
    MonokromView()
}
