//
//  DoDotCanvasApp.swift
//  DoDotCanvas
//
//  Created by 안민수 on 2022/04/17.
//

import SwiftUI

@main
struct DoDotCanvasApp: App {
    
    @StateObject var vm = CellViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
