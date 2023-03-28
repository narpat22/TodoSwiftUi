//
//  TodoViewModel.swift
//  TodoSwiftUi
//
//  Created by Pritesh Singhvi on 28/03/23.
//

import Foundation
import SwiftUI

class TodoViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var description: String = ""
    var todoModelArray = [TodoDataModel]()

    init() {
        todoModelArray.append(TodoDataModel(name: "Update Password", details: "Only on ProdMirror"))
    }
    func addToModel() {
        let todoModel = TodoDataModel(name: title, details: description)
        todoModelArray.append(todoModel)
        resetData()
    }

    func resetData() {
        title = ""
        description = ""
    }
}
