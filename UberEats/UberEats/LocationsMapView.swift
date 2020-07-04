//
//  LocationsMapView.swift
//  UberEats
//
//  Created by Avjinder sekhon on 2020-07-03.
//  Copyright © 2020 Avjinder sekhon. All rights reserved.
//

import MapKit
import SwiftUI

struct LocationsMapView: UIViewRepresentable {
    
    var locations: [Location]
    
    func makeUIView(context: Context) ->  MKMapView {
        let mapView = MKMapView()
        let firstCoordinates = locations.first!.coordinate
        let radius = 1000.0
        let location = CLLocation(latitude: firstCoordinates.latitude, longitude: firstCoordinates.longitude)
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: radius, longitudinalMeters: radius)
        mapView.setRegion(region, animated: true)
        mapView.addAnnotations(locations)
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {}
}

struct LocationsMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsMapView(locations: dummyLocations)
    }
}

let dummyLocations: [Location] = [
    Location(title: "Palate Kitchen", coordinate: CLLocationCoordinate2D(latitude: 49.2843, longitude: -123.1178)),
    Location(title: "Miku Restaurant", coordinate: CLLocationCoordinate2D(latitude: 49.287016, longitude: -123.112984)),
    Location(title: "Cactus Club Cafe", coordinate: CLLocationCoordinate2D(latitude: 49.285476, longitude: -123.118777)),
]

class Location: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}
