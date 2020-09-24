import XCTest
@testable import Striations

final class StriationsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Striations().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
