//
//  BeginMatchViewController.swift
//  RoShamBo
//
//  Created by Christian Villere on 8/28/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK outlets:
    
    
    
    @IBOutlet weak var Rock: UILabel!
    @IBOutlet weak var Paper: UILabel!
    @IBOutlet weak var Scissors: UILabel!
    
    func randomPlayValue() -> Int {
        
        let playValue = arc4random_uniform(3)
        
        return Int(playValue)
        
    }
    

    @IBAction func YourPlay() {
        
        
        
    }

/*
    func OpponentPlay () {
     
        
        switch gameNumber {
            
        case gameNumber == 0:
            return
            //opponent's play is rock
        
        case gameNumber == 1:
            //Opponent's play is paper
            
        case gameNumber == 2:
            //Opponent's play is Scissors
        
        default:
            break
            
        }
        
*/
        
        
    }


}

