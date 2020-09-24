//
//  Striations.swift
//  Memory
//
//  Created by Kamil Góralski on 24/09/2020.
//  Copyright © 2020 Kamil Góralski. All rights reserved.
//

import SwiftUI

public struct Striations: View {

    private var color: Color
    private var width: CGFloat
    private var spacing: CGFloat
    private var rotationDegrees: Double

    public init(color: Color = Color.black.opacity(0.5),
         width: CGFloat = 16,
         spacing: CGFloat = 16,
         rotationDegrees: Double = 45) {

        self.color = color
        self.width = width
        self.spacing = spacing
        self.rotationDegrees = rotationDegrees
    }

    public var body: some View {

        GeometryReader { geometryReader in
            self.createStriations(geometryReader)
                .position(x: geometryReader.size.width / 2, y: geometryReader.size.height / 2)

        }
        .clipped()
        .drawingGroup()
    }

    private func createStriations(_ geometry: GeometryProxy) -> some View {

        let longSide = max(geometry.size.width, geometry.size.height)
        let itemWidth = width + spacing
        let itemHeight = longSide * sqrt(2)
        let items = Int(itemHeight / itemWidth)

        return HStack(alignment: .center, spacing: spacing) {
            ForEach(0..<items, id: \.self) { _ in
                self.color
                    .frame(width: self.width, height: itemHeight)
            }
        }
        .rotationEffect(Angle(degrees: rotationDegrees))
    }
}

struct StripesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Striations(color: .black, width: 8, spacing: 8, rotationDegrees: 45)
                .background(Color.red)
                .frame(width: 200, height: 200)
            Striations(color: .black, width: 16, spacing: 16, rotationDegrees: 30)
                .background(Color.red)
                .frame(width: 50, height: 700)
            Striations(color: .black, width: 16, spacing: 16, rotationDegrees: 45)
                .background(Color.red)
                .frame(width: 250, height: 250)
        }
    }
}
