//
//  BeginMatchViewController.swift
//  RoShamBo
//
//  Created by Christian Villere on 8/28/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class BeginMatchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK outlets:
    
    @IBOutlet weak var RockImage: UIButton!
    @IBOutlet weak var PaperImage: UIButton!
    @IBOutlet weak var ScissorsImage: UIButton!
    
    @IBOutlet weak var Rock: UILabel!
    @IBOutlet weak var Paper: UILabel!
    @IBOutlet weak var Scissors: UILabel!
    
    
    
    func randomPlayValue() -> Int {
        
        let playValue = arc4random_uniform(3)
        let gameValue = Int(playValue)
        
        return gameValue
        
    }
    
    
    
    @IBAction func YouPlayRock(){
        
        let controller: ResultsViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
        //set yourPlay and opponentPlay values
        controller.yourPlay = 0
        controller.opponentPlay = randomPlayValue()
        
        present(controller, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "PlayPaper"{
            
        
            let controller = segue.destination as! ResultsViewController
        
            controller.yourPlay = 1
            controller.opponentPlay = randomPlayValue()
        
        }
        
        if segue.identifier == "PlayScissors"{
            
            
            let controller = segue.destination as! ResultsViewController
            
            controller.yourPlay = 2
            controller.opponentPlay = randomPlayValue()
        }
        
    }
    
    @IBAction func YouPlayPaper(){
       
        self.performSegue(withIdentifier: "PlayPaper", sender: self)
        
    }
    
    @IBAction func YouPlayScissors() {
        
        self.performSegue(withIdentifier: "PlayScissors", sender: self)
        
    }
}
    
        
        





