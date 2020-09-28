//
//  StriationsView.swift
//  Striations
//
//  Created by Kamil Góralski on 28/09/2020.
//

import SwiftUI

struct StriationsView: View {

    let striations: Striations
    let size: CGSize

    init(striations: Striations, size: CGSize) {
        self.striations = striations
        self.size = size
    }

    var longerSide: CGFloat {
        return max(size.width, size.height)
    }

    var itemHeight: CGFloat {
        return longerSide * sqrt(2)
    }

    var numberOfItems: Int {
        return Int(itemHeight / striations.itemWidth)
    }

    public var body: some View {

        HStack(spacing: striations.spacing) {
            ForEach(0..<numberOfItems, id: \.self) { _ in
                self.striations.color
                    .frame(width: self.striations.width, height: itemHeight)
            }
        }
        .rotationEffect(Angle(degrees: striations.rotationDegrees))
    }

}
