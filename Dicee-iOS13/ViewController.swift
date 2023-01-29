//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageCube1: UIImageView!
    @IBOutlet weak var imageCube2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let arrayCube = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        
        imageCube1.image = arrayCube[Int.random(in: 0...5)]
        imageCube2.image = arrayCube[Int.random(in: 0...5)]
    }
}

