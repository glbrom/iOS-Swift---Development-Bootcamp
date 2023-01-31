//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        // Проигрывание муз, Обращение к sender, его заголовку Label С D F 
        playSound(soundName: sender.currentTitle!)
        
        // Изменение прозрачности на половину 50%
        sender.alpha = 0.5
        
        // Задержка 0,2 с
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Возвращение прозрачности на 100 %
            sender.alpha = 1.0
        }
        
    }
   
    // Проигрывание муз с Assets
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
}








