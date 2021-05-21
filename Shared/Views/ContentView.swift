//
//  ContentView.swift
//  Shared
//
//  Created by Abdullah Ridwan on 5/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(landmarks){specific_landmark in
                NavigationLink(destination: LandmarkDetail(landmark: specific_landmark)){
                    LandmarkRow(landmark: specific_landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
