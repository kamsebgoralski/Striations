//
//  StriationsViewTests.swift
//  StriationsTests
//
//  Created by Kamil Góralski on 28/09/2020.
//

import XCTest
@testable import Striations

final class StriationsViewTests: XCTestCase {

    func test_longerSide_whenSizeZero_return0() throws {

        let striationsView = StriationsView(striations: .init(), size: .zero)

        XCTAssertEqual(0, striationsView.longerSide)
    }

    func test_longerSide_whenHeightSideIsLonger_returnHeightSize() throws {

        let striationsView = StriationsView(striations: .init(), size: .init(width: 100, height: 300))

        XCTAssertEqual(300, striationsView.longerSide)
    }

    func test_longerSide_whenWidthSideIsLonger_returnWidthSize() throws {

        let striationsView = StriationsView(striations: .init(), size: .init(width: 400, height: 200))

        XCTAssertEqual(400, striationsView.longerSide)
    }

    func test_itemHeight_whenSizeZero_return0() throws {

        let striationsView = StriationsView(striations: .init(), size: .zero)

        XCTAssertEqual(0, striationsView.itemHeight)
    }

    func test_itemHeight_whenSizeIsNotZero_returnDiagonalLengthOfSquareOfLongerSide() throws {

        let striationsView = StriationsView(striations: .init(), size: .init(width: 0, height: 25))

        XCTAssertEqual(25 * sqrt(2), striationsView.itemHeight)
    }

    func test_numberOfItems_whenSizeZero_return0() throws {

        let striationsView = StriationsView(striations: .init(), size: .zero)

        XCTAssertEqual(0, striationsView.numberOfItems)
    }

    func test_numberOfItems_whenDefaultStriations_returnItemHeightDividedByItemWidth() throws {

        let striations = Striations()
        let striationsView = StriationsView(striations: striations, size: .init(width: 200, height: 500))

        let numberOfItems = Int(striationsView.itemHeight / striations.itemWidth)

        XCTAssertEqual(numberOfItems, striationsView.numberOfItems)
    }
}
