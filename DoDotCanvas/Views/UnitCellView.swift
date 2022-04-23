//
//  UnitCellView.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/17.
//

import SwiftUI

struct UnitCellView: View {
    
    
    @Binding var cellUnit : CellModel
    
    var currentPaintColor : Color
    
    var screenSize : CGSize
    
    var body: some View {
        
        ZStack {
            
            if cellUnit.paintedBool {
                cellUnit.paintedColor
            } else { Color.white }
            
            Button {
                cellUnit.paintedBool.toggle()
                cellUnit.paintedColor = currentPaintColor
            } label: {
                Rectangle()
                    .stroke()
            }
   
        }
        .frame(width: screenSize.height / 10, height: screenSize.width / 10)
        .padding(20)
    }
    
}

struct UnitCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(dev.vm)
    }

}
