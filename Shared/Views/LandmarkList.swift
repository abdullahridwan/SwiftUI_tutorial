//
//  LandmarkList.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/21/21.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly: Bool = false
    
    var favoriteLandmarks: [Landmark] {
        landmarks.filter{landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Show Favorites")
                }
                ForEach(favoriteLandmarks){specific_landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: specific_landmark)){
                        LandmarkRow(landmark: specific_landmark)
                    }
                }
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        /*
        ForEach(["iPad (8th generation)", "iPhone 12 Pro Max"], id: \.self){device in
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: device))
            .previewDisplayName(device)
        }
        */
        
    }
}
