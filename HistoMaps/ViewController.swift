//
//  ViewController.swift
//  HistoMaps
//
//  Created by Michael Dugan on 2018/08/27.
//  Copyright © 2018 Michael Dugan. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Replace the string in the URL below with your custom style URL from Mapbox Studio.
        // Read more about style URLs here: https://www.mapbox.com/help/define-style-url/
        let styleURL = URL(string: "mapbox://styles/mikeduges/cjlbnjyz65kw32slrufq8cq22")
        let mapView = MGLMapView(frame: view.bounds,
                                 styleURL: styleURL)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Set the map’s center coordinate and zoom level.
        mapView.setCenter(CLLocationCoordinate2D(latitude: 45.52954,
                                                 longitude: -122.72317),
                          zoomLevel: 14, animated: false)
        view.addSubview(mapView)
    }
    
    @IBOutlet var mapView: MGLMapView!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

