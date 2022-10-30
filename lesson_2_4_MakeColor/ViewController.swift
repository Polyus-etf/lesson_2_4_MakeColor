//
//  ViewController.swift
//  lesson_2_4_MakeColor
//
//  Created by Ирина on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var colorView: UIView!
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    private var color = CGColor(
        srgbRed: 0.5,
        green: 0.5,
        blue: 0.5,
        alpha: 1
    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        colorView.layer.backgroundColor = color
    }
    
    // MARK: - Methods
    private func setColor() {
        color = CGColor(
            srgbRed: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        colorView.layer.backgroundColor = color
    }
    
    
    // MARK: - IB Action
    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        setColor()
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        setColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        setColor()
    }
    
    
    
}

