//
//  LandmarkRow.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/20/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandMark
    
    var body: some View {
        HStack{
            landmark.image.resizable()
            Text(landmark.name)
            Spacer()
        }
    }
    
    
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
