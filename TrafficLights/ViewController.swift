//
//  ViewController.swift
//  TrafficLights
//
//  Created by Владимир Киселев on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var switchLightsButton: UIButton!
    
    enum LightsState {
        case off
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 64
        yellowLightView.layer.cornerRadius = 64
        greenLightView.layer.cornerRadius = 64
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func switchingLightsButton() {
        // On start -> red on
        redLightView.alpha = 1.0
        // switch case -> through all views and make next alpha = 1, prev alpha = 0.3
        
        // if id = 0 -> Start if others -> Next
        switchLightsButton.setTitle("Next", for: .normal)
    }
    
}

