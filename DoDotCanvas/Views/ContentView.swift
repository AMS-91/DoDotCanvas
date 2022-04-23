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
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
 
    
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let screenSize = proxy.size
            
            ScrollView {
                
                    LazyVGrid(columns: columns) {
                        ForEach($vm.cells) { $item in
                            UnitCellView(cellUnit: $item,
                                         currentPaintColor: currentPaintColor,
                                         screenSize: screenSize)
                    }
                        
                }
                
            }
            .padding(.horizontal, 40)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(dev.vm)
    }
}
