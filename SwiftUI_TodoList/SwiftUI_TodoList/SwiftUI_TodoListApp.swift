//
//  SwiftUI_TodoListApp.swift
//  SwiftUI_TodoList
//
//  Created by Taehwan Kim on 2022/09/12.
//

import SwiftUI

/*
 MVVM Acrchitecture
 Model - data point
 View - UI
 ViewModel - manages Models for View
 */

@main
struct SwiftUI_TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
