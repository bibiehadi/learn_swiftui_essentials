//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Bibie Hadi Kusuma on 16/01/25.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    var body: some View {
        NavigationSplitView {
            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0)})
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) {
                    key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}
