//
//  ContentView.swift
//  Shared
//
//  Created by Abdullah Ridwan on 5/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //Insert Map
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            //Insert CircleImage
            CircleImage()
                .offset(y: -130)
            
                .padding(.bottom, -130)
            
            //Info
            VStack(alignment: .leading) {
                Text("Central Park")
                    .font(.title)
                HStack {
                    Text("Manhattan")
                    Spacer()
                    Text("New York City")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                
                Divider()
                Text("About Central Park").font(.title2)
                Text("Central Park is an urban park in New York City located between the Upper West and Upper East Sides of Manhattan.")
                    .font(.subheadline)
            }
            .padding()
            Spacer()
        }
        
        
        
        
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
