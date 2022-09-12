//
//  ItemModel.swift
//  SwiftUI_TodoList
//
//  Created by Taehwan Kim on 2022/09/12.
//

import Foundation

struct ItemModel: Identifiable {
    //uuid를 String으로 만듬으로서 다른 DB와 호환이 용이하도록 만들기
    let id: String = UUID().uuidString
    
    let titel: String
    let isCompleted: Bool
}


