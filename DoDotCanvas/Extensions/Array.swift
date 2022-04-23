//
//  Array.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/23.
//

import Foundation

extension Array {
    init(cutomRepeating: (() -> Element), count: Int) {
        self = []
        for _ in 0..<count {
            self.append(cutomRepeating())
        }
    }
}
