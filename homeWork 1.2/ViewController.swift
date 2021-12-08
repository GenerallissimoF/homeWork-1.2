//
//  ViewController.swift
//  homeWork 1.2
//
//  Created by Ivan Adoniev on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightSection: UIView!
    @IBOutlet weak var yelowLightSection: UIView!
    @IBOutlet weak var greenLightSection: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var nextColorState: TrafficLights = .red
    
    enum TrafficLights {
        case red
        case yellow
        case green
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.setTitle("Start", for: .normal)
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 29.0)
        startButton.layer.cornerRadius = 10
        roundAndDarkElement(element: redLightSection)
        roundAndDarkElement(element: yelowLightSection)
        roundAndDarkElement(element: greenLightSection)
    }
    
  
    @IBAction func startLightChange() {
        startButton.setTitle("Next", for: .normal)
       
        switch nextColorState {
        case .red:
            turn(offLight: greenLightSection, onLight: redLightSection)
            nextColorState = .yellow
        case .yellow:
            turn(offLight: redLightSection, onLight: yelowLightSection)
            nextColorState = .green
        case .green:
            turn(offLight: yelowLightSection, onLight: greenLightSection)
            nextColorState = .red
        }
    }
    
    func roundAndDarkElement(element: UIView) {
        element.layer.cornerRadius = element.bounds.height / 2
        element.alpha = 0.1
    }
    func makeBrighterThe(element: UIView) {
        element.alpha = 0.9
    }
    func makeDarkThe(element: UIView) {
        element.alpha = 0.1
    }
    
    func turn(offLight: UIView, onLight: UIView ) {
        offLight.alpha = 0.1
        onLight.alpha = 0.9
        
    }
}
