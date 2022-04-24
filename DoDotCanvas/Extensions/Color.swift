//
//  Color.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/23.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    static let paint = ColorPaint()
}

struct ColorTheme {
    
    // For Background
    let backgroud = Color("BackgroundColor")
    
    // For Text
    let accent = Color("AccentColor")
    let secondaryText = Color("SecondaryTextColor")
    
    // For UIComponents
    let button = Color("ButtonColor")
}

struct ColorPaint {
    
    // selectable colors for paintings.
    let red = Color("RedColor")
    let orange = Color("OrangeColor")
    let yellow = Color("YellowColor")
    let green = Color("GreenColor")
    let blue = Color("BlueColor")
    let navy = Color("NavyColor")
    let purple = Color("PurpleColor")

}
