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
    
    
    var redIsLight = false
    var yellowIsLight = false
    var greenIsLight = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.setTitle("Start", for: .normal)
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 29.0)
        roundAndDarkElement(element: redLightSection)
        roundAndDarkElement(element: yelowLightSection)
        roundAndDarkElement(element: greenLightSection)
    }
    
  
    @IBAction func startLightChange() {
        startButton.setTitle("Next", for: .normal)
        if !redIsLight {
            makeDarkThe(element: greenLightSection)
            makeBrighterThe(element: redLightSection)
            redIsLight = true
            
        }
        else if !yellowIsLight {
            makeDarkThe(element: redLightSection)
            makeBrighterThe(element: yelowLightSection)
            yellowIsLight = true
        } else {
            makeDarkThe(element: yelowLightSection)
            makeBrighterThe(element: greenLightSection)
            redIsLight = false
            yellowIsLight = false
        }
        
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


