//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Bibie Hadi Kusuma on 13/01/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List(landmarks, id: \.id) {
        NavigationSplitView {
            List(landmarks) {
                landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
