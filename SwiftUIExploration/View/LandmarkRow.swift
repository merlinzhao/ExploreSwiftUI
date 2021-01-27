//
//  LandmarkRow.swift
//  SwiftUIExploration
//
//  Created by Merlin Zhao on 1/25/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark // a stored property
                            // LandmarkRow type needs instance during intialization

    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
        
        if landmark.isFavorite {
            Image(systemName: "star.fill")
                .foregroundColor(.blue)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
    
}
