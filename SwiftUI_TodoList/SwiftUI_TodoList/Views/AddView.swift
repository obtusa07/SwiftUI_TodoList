//
//  AddView.swift
//  SwiftUI_TodoList
//
//  Created by Taehwan Kim on 2022/09/12.
//

import SwiftUI

struct AddView: View {
    let backgroundColor: UIColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    @State var textFiledText: String = ""
    var body: some View {
        VStack {
            ScrollView {
                TextField("Type something here...", text: $textFiledText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(backgroundColor))
                    .cornerRadius(10)
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height:55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)

                }

            }
            .navigationTitle("Add an Item ✏️")
        }
        .padding(14)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
