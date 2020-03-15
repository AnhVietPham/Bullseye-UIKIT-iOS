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
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewGame()
        
        let thumbImageNomarl = #imageLiteral(resourceName: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNomarl, for: .normal)
        
        let thumbImageHighlight = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlight, for: .highlighted)
        
        
    }

    @IBAction func showAlert(){
        
        let different = abs(targetValue - currentValue)
        let points =  100 - different
        score += points
        
        let title: String
        
        if different == 0 {
            title = "Perfect!"
        } else if different < 5 {
            title = "You almost had it!"
        } else if different < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close!"
        }
        
        let message = "Your score \(points) point"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            a in self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
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
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text =  String(round)
    }
    
    func startNewGame(){
        score = 0
        round = 0
        startNewRound()
    }
    
    @IBAction func startOver(){
        startNewGame()
    }

}

