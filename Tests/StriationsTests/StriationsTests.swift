import XCTest
import SwiftUI
@testable import Striations

final class StriationsTests: XCTestCase {

    func test_color_defaultInit_returnDefault() throws {

        let striations = Striations()

        XCTAssertEqual(Color.black.opacity(0.5), striations.color)
    }

    func test_color_init_returnSameAsPassedToInit() throws {

        let striations = Striations(color: Color.red)

        XCTAssertEqual(Color.red, striations.color)
    }

    func test_width_defaultInit_returnDefault() throws {

        let striations = Striations()

        XCTAssertEqual(16, striations.width)
    }

    func test_width_init_returnSameAsPassedToInit() throws {

        let striations = Striations(width: 32)

        XCTAssertEqual(32, striations.width)
    }

    func test_spacing_defaultInit_returnDefault() throws {

        let striations = Striations()

        XCTAssertEqual(16, striations.spacing)
    }

    func test_spacing_init_returnSameAsPassedToInit() throws {

        let striations = Striations(spacing: 64)

        XCTAssertEqual(64, striations.spacing)
    }

    func test_rotationDegrees_defaultInit_returnDefault() throws {

        let striations = Striations()

        XCTAssertEqual(45, striations.rotationDegrees)
    }

    func test_rotationDegrees_init_returnSameAsPassedToInit() throws {

        let striations = Striations(rotationDegrees: 180)

        XCTAssertEqual(180, striations.rotationDegrees)
    }

    func test_itemWidth_defaultInit_returnSumOfDefaultWidthAndSpacing() throws {

        let striations = Striations()

        XCTAssertEqual(32, striations.itemWidth)
    }

    func test_itemWidth_whenInitWidthAndSpacingNotDefault_returnSumOfWidthAndSpacing() throws {

        let striations = Striations(width: 8, spacing: 10)

        XCTAssertEqual(18, striations.itemWidth)
    }
}
