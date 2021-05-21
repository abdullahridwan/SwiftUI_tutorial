//
//  MapView.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/20/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center:CLLocationCoordinate2D(latitude: 40.785091, longitude: -73.968285),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
    
    
    
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
