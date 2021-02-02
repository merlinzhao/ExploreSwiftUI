//
//  ModelData.swift
//  SwiftUIExploration
//
//  Created by Merlin Zhao on 1/25/21.
//

import Foundation
import Combine
// an observable object is a custom objects for data to be bound in a view that is stored in SwiftUI env
final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json") //observable object needs to publish data so subscribers can pick up change
}

// Array of landmarks
var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
