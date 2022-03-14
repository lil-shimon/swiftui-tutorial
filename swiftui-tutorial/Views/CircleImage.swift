//
//  CircleImage.swift
//  swiftui-tutorial
//
//  Created by lil-shimon on 2022/03/13.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        //        Image("turtlerock")
        //            /// circle shape
        //            .clipShape(Circle())
        //            /// add another circle
        //            .overlay {
        //                Circle().stroke(.white, lineWidth: 4)
        //            }
        //            .shadow(radius: 7)
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
