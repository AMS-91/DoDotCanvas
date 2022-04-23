//
//  PreviewProvider.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}


class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    
    // private : Protection, 클래스 내부에서만 이니셜라이져 된다. class는 호출되려면 이니셜라이저가 필요.
    private init() { }
    
    let vm = CellViewModel()
    
}
