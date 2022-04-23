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
                    .stroke(lineWidth: 2.5)
                    .foregroundColor(
                        Color.theme.accent
                    )
                    .opacity(cellUnit.paintedBool ? 0.0 : 1.0 )
            }
   
        }
        .frame(
            width: min(screenSize.height / 18, screenSize.width / 18),
            height: min(screenSize.height / 18, screenSize.width / 18)
        )
        .padding(.horizontal,0)
        .padding(.vertical,3)
    }
    
}

struct UnitCellView_Previews: PreviewProvider {
    static var previews: some View {
        

            ContentView()
                .environmentObject(dev.vm)
                .preferredColorScheme(.dark)
        
        
    }

}
