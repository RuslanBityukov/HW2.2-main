//
//  ViewController.swift
//  HW2.2
//
//  Created by Руслан Битюков on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewImageLabel: UIView!
    
    @IBOutlet weak var redSliderLabel: UISlider!
    @IBOutlet weak var greenSliderLabel: UISlider!
    @IBOutlet weak var blueSliderLAbel: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   private func tintCollor() {
        viewImageLabel.backgroundColor = UIColor(red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLAbel.value), alpha: 1)
    }
    
    @IBAction func sliderImage(_ sender: UISlider) {
        tintCollor()
    }
}

