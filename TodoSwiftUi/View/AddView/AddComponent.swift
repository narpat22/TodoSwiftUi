//
//  AddComponent.swift
//  TodoSwiftUi
//
//  Created by Pritesh Singhvi on 28/03/23.
//

import Foundation
import SwiftUI

struct AddComponent: View {
    @Binding var name: String
    var component: AddTextFieldComponent
    var body: some View {
        Text(component.getHeading())
            .font(.callout)
            .bold()
        TextField("Type here...", text: $name, axis: .vertical)
            .textFieldStyle(.roundedBorder)
            .lineLimit(component.getLineLimit())
    }
}
