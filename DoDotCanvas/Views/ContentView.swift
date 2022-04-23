//
//  ContentView.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/17.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm : CellViewModel
    @Environment(\.colorScheme) var colorScheme
    
    @State var currentPaintColor : Color = Color.paint.green
    
    
    //MARK: Grid Item...
    var columns : [GridItem] = Array(repeating: .init(.fixed(20)), count: 11)
    
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let screenSize = proxy.size
            
            ScrollView {
                    
                Section {
                    LazyVGrid(columns: columns, spacing: 0) {
                        ForEach($vm.cells) { $item in
                            UnitCellView(cellUnit: $item,
                                         currentPaintColor: currentPaintColor,
                                         screenSize: screenSize)
                        }
                    }
                    .padding(.bottom, 50)
                } header: {
                    Text("🖌 Canvas 🖌")
                        .font(.largeTitle)
                        .foregroundColor(
                            Color.theme.accent
                        )
                        .padding(.top, 30)
                }

                
                
                Section {
                    VStack(spacing: 20){
                        
                        HStack(alignment: .center, spacing: 30) {
                            
                            paletteButton(Color.paint.red)
                            paletteButton(Color.paint.orange)
                            paletteButton(Color.paint.yellow)
                            paletteButton(Color.paint.green)
                            
                        }
                        
                        HStack(alignment: .center, spacing: 30) {
                        
                            paletteButton(Color.paint.blue)
                            paletteButton(Color.paint.navy)
                            paletteButton(Color.paint.purple)
                            paletteButton(Color.black)
                            
                        }
                    }
                    
                } header: {
                    Text("🎨 Palette 🎨")
                        .font(.largeTitle)
                        .foregroundColor(
                            Color.theme.accent
                        )
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

extension ContentView {
    //MARK: Palette
    private func paletteButton(_ color: Color) -> some View {
        return Button {
            currentPaintColor = color
        } label: {
            ZStack {
                Circle()
                .foregroundColor(color)
                .frame(width: 30, height: 30)
                
                if colorScheme == .dark {
                Circle()
                    .stroke(Color.white, lineWidth: 1.5)
                    .frame(width: 30, height: 30)
                }
                
            }
                    
        }
    }
    
}
