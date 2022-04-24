//
//  CellModel.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/17.
//

import Foundation
import SwiftUI


struct CellModel : Identifiable, Codable {
    
    let id : String
    var paintedBool : Bool
    var paintedColor : String
    
    init() {
        self.id = UUID().uuidString
        self.paintedBool = false
        self.paintedColor = "ClearColor"
    }
}
