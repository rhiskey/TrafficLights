//
//  ViewController.swift
//  TrafficLights
//
//  Created by Владимир Киселев on 15.03.2022.
//

import UIKit

enum LightsState {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var switchLightsButton: UIButton!
    
    private var currentLight = LightsState.red
    private let isOn: CGFloat = 1.0
    private let isOff: CGFloat = 0.3
    private let lightsCornerRadius: CGFloat = 64
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchLightsButton.layer.cornerRadius = 16
        
        redLightView.alpha = isOff
        yellowLightView.alpha = isOff
        greenLightView.alpha = isOff
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    }

    @IBAction func switchingLightsButton() {
        if switchLightsButton.currentTitle == "Start" {
            switchLightsButton.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLightView.alpha = isOff
            redLightView.alpha = isOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = isOff
            yellowLightView.alpha = isOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = isOff
            greenLightView.alpha = isOn
            currentLight = .red
        }

    }
    
}

//extension ViewController {
//    privat enum
//}
