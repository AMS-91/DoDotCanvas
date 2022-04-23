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
    var paintedBool : Bool
    var paintedColor : Color
    
    init() {
        self.id = UUID().uuidString
        self.paintedBool = false
        self.paintedColor = Color.clear
    }
}
