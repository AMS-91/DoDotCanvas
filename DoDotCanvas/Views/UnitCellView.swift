//
//  UnitCellView.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/17.
//

import SwiftUI

struct UnitCellView: View {
    
    var paintedColor = Color.yellow
    
    var proxy : CGSize
    
    var body: some View {
        
        ZStack {
            
            paintedColor
            
            Rectangle()
                .stroke()
        }
        .frame(width: proxy.height, height: proxy.width)
        .padding(20)
    }
    
}

struct UnitCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UnitCellView(paintedColor: .yellow, proxy: .init(width: 100, height: 100))
                .previewLayout(.sizeThatFits)
            
            UnitCellView(paintedColor: .yellow, proxy: .init(width: 100, height: 100))
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
