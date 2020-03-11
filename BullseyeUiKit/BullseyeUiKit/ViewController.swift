//
//  ViewController.swift
//  BullseyeUiKit
//
//  Created by PHAM ANH VIET on 3/8/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert(){
        
        let message = "The value of the slider is now: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello Word!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        startNewRound()
    }

    @IBAction func sliderMoved(_ slider: UISlider){
        print("The value of the slider is now: \(slider.value)")
        
        currentValue = Int(slider.value)
    }
    
    @IBAction func knockKnock(){
        let alert = UIAlertController(title: "Knock knock", message: "Who's There!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Little old Lady!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
    }

}

