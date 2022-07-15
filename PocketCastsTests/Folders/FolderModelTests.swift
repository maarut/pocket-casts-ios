import XCTest

@testable import podcasts

class FolderModelTests: XCTestCase {
    func testCapFolderNameAt100Chars() {
        let model = FolderModel()

        model.validateFolderName("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et sapien nunc. In et ultrices dui. Aenean feugiat imperdiet orci,")

        XCTAssertEqual(model.name.count, 100)
        XCTAssertEqual(model.name, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis et sapien nunc. In et ultrices dui. Ae")
    }
}

