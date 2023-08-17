//
//  CustomColor+Ext.swift
//  Monokrom
//
//  Created by Hidayat Abisena on 17/08/23.
//

import Foundation
import UIKit

extension UIColor {
    // Monochrome Tint & Shade
    static let codGray = UIColor(hex: "111111")
    static let jaguarBlack = UIColor(hex: "101010")
    static let eerieBlack = UIColor(hex: "121212")
    static let charcoal = UIColor(hex: "161616")
    static let oil = UIColor(hex: "191919")
    static let asphalt = UIColor(hex: "1A1A1A")
    static let lead = UIColor(hex: "1C1C1C")
    static let iron = UIColor(hex: "1E1E1E")
    static let granite = UIColor(hex: "202020")
    static let outerSpace = UIColor(hex: "2B2B2B")
    static let cannonBlack = UIColor(hex: "2C2C2C")
    static let nightRider = UIColor(hex: "2F2F2F")
    
    // Merah Putih Tint & Shade
    static let permanentGeraniumLake = UIColor(hex: "FF0000")
    static let cgRed = UIColor(hex: "FF1A1A")
    static let carminePink = UIColor(hex: "FF3333")
    static let flamingo = UIColor(hex: "FF4D4D")
    static let froly = UIColor(hex: "FF6666")
    static let lightCoral = UIColor(hex: "FF8080")
    static let seaPink = UIColor(hex: "FF9999")
    static let beautyBush = UIColor(hex: "FFB3B3")
    static let coralCandy = UIColor(hex: "FFCCCC")
    static let wispPink = UIColor(hex: "FFE6E6")
    static let white = UIColor(hex: "FFFFFF")
    
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = hex.startIndex
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        self.init(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
