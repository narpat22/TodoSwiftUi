//
//  ToDoView.swift
//  TodoSwiftUi
//
//  Created by Pritesh Singhvi on 28/03/23.
//

import SwiftUI

struct ToDoView: View {
    @StateObject var todoViewModel = TodoViewModel()
    var body: some View {
        NavigationView {
            List(todoViewModel.todoModelArray, id: \.self) { todo in
                VStack(alignment: .leading) {
                    Text(todo.name)
                        .font(.body)
                    Text(todo.details)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.top, 1)
                }
                .onTapGesture {
                    print(todo.name, todo.details)
                }
            }
            .navigationTitle("Todo's 📝")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        ToDoAddView(todoViewModel: todoViewModel)
                    } label: {
                        HStack {
                            Text("Add")
                            Image(systemName: "plus")
                        }
                    }
                }
            }
        }
    }
}



struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
