//
//  ContentView.swift
//  swiftui-tutorial
//
//  Created by lil-shimon on 2022/03/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
