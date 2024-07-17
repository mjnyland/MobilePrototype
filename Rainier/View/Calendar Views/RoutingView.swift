//
//  RoutingView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/23/24.
//

import SwiftUI
import MapKit

struct RoutingView: View {
    @State private var region = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.731245, longitude: -73.997115),
        span: MKCoordinateSpan(latitudeDelta: 0.07, longitudeDelta: 0.07)
    ))
    
    @State private var isPresented: Bool = true
    
    var body: some View {
        VStack{
            Map(position: $region)
                .edgesIgnoringSafeArea(.all)    
        }
        
    }
    
}

#Preview {
    RoutingView()
}
