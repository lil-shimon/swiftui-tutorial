//
//  HexagonParameters.swift
//  swiftui-tutorial
//
//  Created by lil-shimon on 2022/03/15.
//

//
// Define a Segment structure to hold the three points that represent one side of the hexagon;
// import CoreGraphics so you can use CGPoint.
//
import CoreGraphics
import Foundation

struct HexagonParameters {

    //
    // Each side starts where the previous ends, moves in a straight line to the first point, and then moves over a Bézier curve at the corner to the second point.
    // The third point controls the shape of the curve.
    //
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }

    //
    // Add an adjustment value that lets you tune the shape of the hexagon.
    //
    static let adjustment: CGFloat = 0.085

    //
    // Create ad array to hold segments
    // The values are stored as a fraction of a unit square having its origin in the upper left,
    // with positive x to the right and positive y down.
    // Later, you’ll use these fractions to find the actual points of a hexagon with a given size.1
    //
    static let segments = [
        Segment(
            line: CGPoint(x: 0.60, y: 0.05),
            curve: CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x: 0.50, y: 0.00)
        ),
        Segment(
            line: CGPoint(x: 0.05, y: 0.20),
            curve: CGPoint(x: 0.00, y: 0.30),
            control: CGPoint(x: 0.00, y: 0.25)
        ),
        Segment(
            line: CGPoint(x: 0.00, y: 0.70),
            curve: CGPoint(x: 0.05, y: 0.80),
            control: CGPoint(x: 0.00, y: 0.75)
        ),
        Segment(
            line: CGPoint(x: 0.40, y: 0.95),
            curve: CGPoint(x: 0.60, y: 0.95),
            control: CGPoint(x: 0.50, y: 1.00)
        ),
        Segment(
            line: CGPoint(x: 0.95, y: 0.80),
            curve: CGPoint(x: 1.00, y: 0.70),
            control: CGPoint(x: 1.00, y: 0.75)
        ),
        Segment(
            line: CGPoint(x: 1.00, y: 0.30),
            curve: CGPoint(x: 0.95, y: 0.20),
            control: CGPoint(x: 1.00, y: 0.25)
        ),
    ]
}
