//
//  Landmark.swift
//  SwiftUI Tutorial
//
//  Created by Abdullah Ridwan on 5/20/21.
//

import Foundation
import SwiftUI
import CoreLocation




struct LandMark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var city: String
    var description: String
    
    
    //Privates
    private var imageName: String
    var image:Image{
        Image(imageName)
    }
    
    
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    private var coordinates: Coordinates
    
    //convert to MapKit Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    
    
    
}
