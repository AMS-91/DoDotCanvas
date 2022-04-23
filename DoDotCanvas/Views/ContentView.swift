//
//  ContentView.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/17.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm : CellViewModel
    
    @State var currentPaintColor : Color = Color.paint.green
    
    
    //MARK: Grid Item...
    var columns : [GridItem] = Array(repeating: .init(.fixed(20)), count: 11)
    
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let screenSize = proxy.size
            
            ScrollView {
                
                    LazyVGrid(columns: columns, spacing: 0) {
                        ForEach($vm.cells) { $item in
                            UnitCellView(cellUnit: $item,
                                         currentPaintColor: currentPaintColor,
                                         screenSize: screenSize)
                    } 
                        
                }
                
            }
            .padding(.horizontal, 15)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(dev.vm)
    }
}
