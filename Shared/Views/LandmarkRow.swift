//
//  LandmarkRow.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/21/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
    
    
    
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[1])
    }
}
