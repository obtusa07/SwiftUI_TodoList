//
//  AddView.swift
//  SwiftUI_TodoList
//
//  Created by Taehwan Kim on 2022/09/12.
//

import SwiftUI

struct AddView: View {
    let backgroundColor: UIColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewMoel: ListViewModel
    @State var textFiledText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    var body: some View {
        VStack {
            ScrollView {
                TextField("Type something here...", text: $textFiledText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(backgroundColor))
                    .cornerRadius(10)
                Button {
                    saveButtonPressed()
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
            .alert(isPresented: $showAlert, content: getAlert)
        }
        .padding(14)
    }
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewMoel.addItem(title: textFiledText)
            presentationMode.wrappedValue.dismiss()
            // Environment에서 PresentationMode를 선언하고 해당 변수에 wrappedValue를 dismiss하면 해당 네비게이션 하이라키에서 뒤로 돌아갈수 있다.
        }
    }
    func textIsAppropriate() -> Bool {
        if textFiledText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!"
            showAlert.toggle()
            return false
        }
        //
        return true
    }
    // TODO: 아래 Alert으로 리턴하는건 deprecated임. 다음 메소드 찾아서 고칠것
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
