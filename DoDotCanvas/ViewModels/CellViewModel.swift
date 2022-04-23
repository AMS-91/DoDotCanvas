//
//  CellViewModel.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/23.
//

import Foundation

class CellViewModel : ObservableObject {
    
    //MARK: 어째선지 모르겠지만, CellModel.init()으로 넣으면 값이 반복 생성이 안되고 참조만 되어 바둑판 배열이 만들어지지 않는다.
    @Published var cells : [CellModel] = Array(cutomRepeating: CellModel.init, count: 121)
    
    init(){
    print("init CellViewModel")
    }
}

