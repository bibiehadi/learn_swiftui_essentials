//
//  Landmark.swift
//  Landmarks
//
//  Created by Bibie Hadi Kusuma on 13/01/25.
//
import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
