//
//  BadgeBackground.swift
//  swiftui-tutorial
//
//  Created by lil-shimon on 2022/03/15.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        //
        // In BadgeBackground.swift, add a Path shape to the badge
        // and apply the fill() modifier to turn the shape into a view.
        //
        Path { path in

            //
            // Add a starting point to the path, assuming a container with size 100 x 100 px.
            //
            var width: CGFloat = 100.0
            let height = width

            //
            // The move(to:) method moves the drawing cursor within the bounds of a shape as though an imaginary pen
            // or pencil is hovering over the area, waiting to start drawing.
            //
            path.move(
                to: CGPoint(
                    x: width * 0.95,
                    y: height * 0.20
                )
            )

            //
            // Draw the lines for each point of the shape data to create a rough hexagonal shape.
            //
            HexagonParameters.segments.forEach { segment in

                //
                // The addLine(to:) method takes a single point and draws it.
                // Successive calls to addLine(to:) begin a line at the previous point and continue to the new point.
                //
                path.addLine(
                    to: CGPoint(
                        x: width * segment.line.x,
                        y: height * segment.line.y
                    )
                )
            }
        }
        .fill(.black)
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
