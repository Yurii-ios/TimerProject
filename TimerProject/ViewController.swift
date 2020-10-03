//
//  ViewController.swift
//  TimerProject
//
//  Created by Yurii Sameliuk on 03/02/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        
        timerLabel.text = "Time: \(counter)"
        // inicializacija tajmera
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunction() {
         timerLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            // ostanawliwaet tajmer
            timer.invalidate()
            timerLabel.text = "Time: os over"
        }
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        // etot cukl ne cmožet delat ots4etsekund , a Thread takže zablokiruet wes polzowatelskij interfejs
//        counter = 10
//        for time in 1...10 {
//            counter = counter - 1
//            timerLabel.text = "Time: \(counter)"
//            Thread.sleep(forTimeInterval: 1)
//        }
//
//    }

    @IBAction func startTimerbutton(_ sender: UIButton) {
        
    }
    
}

