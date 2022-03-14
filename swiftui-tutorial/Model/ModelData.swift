//
//  ModelData.swift
//  swiftui-tutorial
//
//  Created by lil-shimon on 2022/03/13.
//

import Combine
import Foundation
import SwiftUI

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("could not file \(filename) in main bundle")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("could not file \(filename) in main bundle: \n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("could not parse \(filename) as: \(T.self): \n\(error)")
    }
}
