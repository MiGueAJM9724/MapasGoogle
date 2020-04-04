//
//  ViewController.swift
//  GoMaps
//
//  Created by Miguel Angel Jimenez Melendez on 4/3/20.
//  Copyright © 2020 Miguel Angel Jimenez Melendez. All rights reserved.
//

import UIKit
import GoogleMaps
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: 20.5820, longitude: -100.8277, zoom: 10.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        //Create a marker in the center of the map
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 20.5820,longitude: -100.8277)
        marker.title = "TecNM Roque"
        marker.snippet = "Celaya, Gto"
        marker.map = mapView
        // Do any additional setup after loading the view, typically from a nib.
    }


}

