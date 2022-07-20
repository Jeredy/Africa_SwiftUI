//
//  LocationModel.swift
//  Africa_SwiftUI
//
//  Created by André Almeida on 2022-07-19.
//

import SwiftUI
import MapKit

struct NationalLocationPark: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}


