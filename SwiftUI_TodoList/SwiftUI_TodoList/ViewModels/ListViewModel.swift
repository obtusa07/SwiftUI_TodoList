//
//  ListViewModel.swift
//  SwiftUI_TodoList
//
//  Created by Taehwan Kim on 2022/09/13.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    func getItems() {
        let newItems = [
            ItemModel(titel: "this is first title", isCompleted: false),
            ItemModel(titel: "second", isCompleted: true),
            ItemModel(titel: "third!", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(titel: title, isCompleted: false)
        items.append(newItem)
    }
}
