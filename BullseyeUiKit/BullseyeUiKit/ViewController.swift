//
//  ViewController.swift
//  BullseyeUiKit
//
//  Created by PHAM ANH VIET on 3/8/20.
//  Copyright © 2020 PHAM ANH VIET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello Word!", message: "This is my first app!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func knockKnock(){
        let alert = UIAlertController(title: "Knock knock", message: "Who's There!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Little old Lady!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

}

