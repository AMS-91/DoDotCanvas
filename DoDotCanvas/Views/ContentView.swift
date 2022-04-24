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
    
    @State var currentPaintColor : String = "GreenColor"
    
    
    //MARK: Grid Item...
    var columns : [GridItem] = Array(repeating: .init(.fixed(20)), count: 11)
    
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let screenSize = proxy.size
            
            ScrollView {
                
                Section {
                    HStack(alignment: .center, spacing: 30) {
                        newButton
                        getSavedButton
                        saveButton
                    }
                    .padding(.bottom, 20)
                    
                } header: {
                    Text("⚙️ Buttons ⚙️")
                        .font(.title)
                        .foregroundColor(
                            Color.theme.accent
                        ).padding(.top, 15)
                }
                    
                Section {
                    LazyVGrid(columns: columns, spacing: 0) {
                        ForEach($vm.cells) { $item in
                            UnitCellView(cellUnit: $item,
                                         currentPaintColor: currentPaintColor,
                                         screenSize: screenSize)
                        }
                    }
                    .padding(.bottom, 30)
                } header: {
                    Text("🖌 Canvas 🖌")
                        .font(.largeTitle)
                        .foregroundColor(
                            Color.theme.accent
                        )
                }

                
                
                Section {
                    VStack(spacing: 20){
                        
                        HStack(alignment: .center, spacing: 30) {
                            
                            paletteButton("RedColor")
                            paletteButton("OrangeColor")
                            paletteButton("YellowColor")
                            paletteButton("GreenColor")
                            
                        }
                        
                        HStack(alignment: .center, spacing: 30) {
                        
                            paletteButton("BlueColor")
                            paletteButton("NavyColor")
                            paletteButton("PurpleColor")
                            paletteButton("BlackColor")
                            
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
    
    
    private func paletteButton(_ color: String) -> some View {
        return Button {
            currentPaintColor = color
        } label: {
            
            ZStack {
                Circle()
                .foregroundColor(Color(color))
                .frame(width: 30, height: 30)
                
                if colorScheme == .dark {
                Circle()
                    .stroke(Color.white, lineWidth: 1.5)
                    .frame(width: 30, height: 30)
                }
                
            }
                    
        }
    }
    
    private var saveButton : some View {
        Button {
            vm.saveCells()
        } label: {
            Text("Save")
                .foregroundColor(.white)
                .frame(width: 100, height: 50)
                .background(Color.theme.button)
        }

    }
    
    private var newButton : some View {
        Button {
            vm.createNewCells()
        } label: {
            Text("Renew")
                .foregroundColor(.white)
                .frame(width: 100, height: 50)
                .background(Color.theme.button)
        }

    }
    
    private var getSavedButton : some View {
        Button {
            vm.getCells()
        } label: {
            Text("Get Saved")
                .foregroundColor(.white)
                .frame(width: 100, height: 50)
                .background(Color.theme.button)
        }

    }
    
}
