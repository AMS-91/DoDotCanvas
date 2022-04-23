//
//  CellViewModel.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/23.
//

import Foundation

class CellViewModel : ObservableObject {
    
    @Published var cells : [CellModel] =
    [
        CellModel(),
        CellModel(),
        CellModel(),
        CellModel(),
        CellModel(),
        CellModel(),
        CellModel(),
        CellModel(),
        CellModel()
    ]
    
    init(){
    print("init CellViewModel")
    }
}

