//
//  TodoSwiftUiTests.swift
//  TodoSwiftUiTests
//
//  Created by Pritesh Singhvi on 28/03/23.
//

import XCTest
@testable import TodoSwiftUi

final class TodoSwiftUiTests: XCTestCase {
    func testInit() {
        // Given
        let viewModel = TodoViewModel()

        // When
        let actualResult = viewModel.todoModelArray

        // When
        XCTAssertTrue(actualResult.count == 1)
        XCTAssertTrue(actualResult.first?.name == "Update Password")
        XCTAssertTrue(actualResult.first?.details == "Only on ProdMirror")
    }
    
    func testAddToModel() {
        // Given
        let viewModel = TodoViewModel()
        viewModel.title = "This is Title"
        viewModel.description = "This is description"
        viewModel.addToModel()

        // When
        let actualResult = viewModel.todoModelArray

        // When
        XCTAssertTrue(actualResult.count == 2)
        XCTAssertTrue(actualResult[1].name == "This is Title")
        XCTAssertTrue(actualResult[1].details == "This is description")
    }
}
