//
//  ToDoAddView.swift
//  TodoSwiftUi
//
//  Created by Pritesh Singhvi on 28/03/23.
//

import SwiftUI

enum AddTextFieldComponent: String {
    case title = "Title"
    case description = "Description"

    func getHeading() -> String {
        return self.rawValue
    }

    func getLineLimit() ->  ClosedRange<Int> {
        switch self {
            case .title:
                return 1...1
            case .description:
                return 3...6
        }
    }
}

struct ToDoAddView: View {
    @StateObject var todoViewModel: TodoViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading) {
            AddComponent(name: $todoViewModel.title, component: .title)
            AddComponent(name: $todoViewModel.description, component: .description)
        }
        .navigationTitle("Add Todo")
        .navigationBarBackButtonHidden()
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    todoViewModel.resetData()
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "arrow.backward")
                        Text("Back")
                    }
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    todoViewModel.addToModel()
                    dismiss()
                } label: {
                    HStack {
                        Text("Add")
                    }
                }
            }
        })
        .padding()
        .onAppear {
            todoViewModel.resetData()
        }
        Spacer()
    }
}
