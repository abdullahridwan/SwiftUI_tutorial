//
//  LandmarkList.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/21/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {

        List(landmarks){specific_landmark in
            LandmarkRow(landmark: specific_landmark)
        }
        
    }
    
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
