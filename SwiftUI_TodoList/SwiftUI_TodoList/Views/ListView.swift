//
//  ListView.swift
//  SwiftUI_TodoList
//
//  Created by Taehwan Kim on 2022/09/12.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first title!",
        "This is the second!",
        "Third"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Memo List 📝")
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

