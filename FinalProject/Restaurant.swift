//
//  Restaurant.swift
//  FinalProject
//
//  Created by Jaleel Shavers on 4/13/18.
//  Copyright © 2018 Jaleel Shavers. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
    
    //create 3 variables hold data for the annotation
    let restaurantTitle:String?
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    //initialize the MKAnnotation object
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
        
    }
    
    var subtitle: String? {
        return restaurantTitle
        
    }
    
    
}
