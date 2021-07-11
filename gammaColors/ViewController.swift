//
//  ViewController.swift
//  gammaColors
//
//  Created by Олег В on 10.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var numberForRedLabel: UILabel!
    @IBOutlet weak var numberForGreenLabel: UILabel!
    @IBOutlet weak var numberForBlueLabel: UILabel!
    
    @IBOutlet weak var sliderRedColor: UISlider!
    @IBOutlet weak var sliderGreenColor: UISlider!
    @IBOutlet weak var sliderBlueColor: UISlider!
    
    @IBAction func moveRed() {
        let redRoudingNumber = round(100 * sliderRedColor.value) / 100
        numberForRedLabel.text = String(redRoudingNumber)
        
        colorView.backgroundColor =
            UIColor.init(displayP3Red:
                            CGFloat(sliderRedColor.value), green:
                                CGFloat(sliderGreenColor.value), blue:
                                    CGFloat(sliderBlueColor.value), alpha:
                                        sliderRedColor.alpha)
    }
    
    @IBAction func moveGreen() {
        let greenRoudingNumber = round(100 * sliderGreenColor.value) / 100
        numberForGreenLabel.text = String(greenRoudingNumber)
        
        colorView.backgroundColor =
            UIColor.init(displayP3Red:
                            CGFloat(sliderRedColor.value), green:
                                CGFloat(sliderGreenColor.value), blue:
                                    CGFloat(sliderBlueColor.value), alpha:
                                        sliderGreenColor.alpha)
    }
    
    @IBAction func moveBlue() {
        let blueRoudingNumber = round(100 * sliderBlueColor.value) / 100
        numberForBlueLabel.text = String(blueRoudingNumber)
        
        colorView.backgroundColor =
            UIColor.init(displayP3Red:
                            CGFloat(sliderRedColor.value), green:
                                CGFloat(sliderGreenColor.value), blue:
                                    CGFloat(sliderBlueColor.value), alpha:
                                        sliderBlueColor.alpha)
    }
}



