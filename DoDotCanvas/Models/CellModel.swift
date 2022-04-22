//
//  CellModel.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/17.
//

import Foundation
import SwiftUI


struct CellModel : Identifiable {
    
    let id : String
    let paintedBool : Bool
    let paintedColor : Color
    
    init(paintedColor: Color) {
        self.id = UUID().uuidString
        self.paintedBool = true
        self.paintedColor = Color.clear
    }
}
