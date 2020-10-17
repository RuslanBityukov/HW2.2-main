//
//  ViewController.swift
//  HW2.2
//
//  Created by Руслан Битюков on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var redLabel: UILabel!
    
    @IBOutlet var viewImageLabel: UIView!
    
    @IBOutlet weak var redSliderLabel: UISlider!
    @IBOutlet weak var greenSliderLabel: UISlider!
    @IBOutlet weak var blueSliderLabel: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingValueLabel()
    }
    
   private func settingValueLabel() {
        blueLabel.text = String(format: "%.2f", blueSliderLabel.value)
        greenLabel.text = String(format: "%.2f", greenSliderLabel.value)
        redLabel.text = String(format: "%.2f", redSliderLabel.value)
    }
    
    private func tintCollor() {
        viewImageLabel.backgroundColor = UIColor(red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLabel.value), alpha: 1)
    }
    
    @IBAction func sliderImage(_ sender: UISlider) {
        blueLabel.text = String(blueSliderLabel.value)
        greenLabel.text = String(greenSliderLabel.value)
        redLabel.text = String(redSliderLabel.value)

        settingValueLabel()
        tintCollor()
    }
}

