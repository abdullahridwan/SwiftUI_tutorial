//
//  LandmarkList.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/21/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {

        NavigationView{
            List(landmarks){specific_landmark in
                LandmarkRow(landmark: specific_landmark)
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
