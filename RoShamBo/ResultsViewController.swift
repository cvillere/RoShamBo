//
//  ResultsViewController.swift
//  RoShamBo
//
//  Created by Christian Villere on 9/2/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

// MARK: - ResultsViewController: UIViewController

import Foundation
import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: Properties
    
    var opponentPlay: Int?
    var yourPlay: Int?
    

    
    //Mark: Outlets
    
    @IBOutlet weak var MatchResult: UILabel!
    @IBOutlet weak var PlayAgainButton: UIButton!

    
    //Mark: Life Cycle
    
    override func viewWillAppear(_ animated: Bool){
        if let opponentPlay = opponentPlay, let yourPlay = yourPlay {
            print(opponentPlay)
            print(yourPlay)
            switch (opponentPlay, yourPlay) {
                case (1, 1), (1, 1), (2, 2), (2, 2), (0, 0), (0, 0):
                    self.MatchResult.text = "You Tie!"
                case (0, 1):
                    self.MatchResult.text = "You Win!"
                case (1, 0):
                    self.MatchResult.text = "You Lose!"
                case (0, 2):
                    self.MatchResult.text = "You Lose!"
                case (2, 0):
                    self.MatchResult.text = "You Win!"
                case (1, 2):
                    self.MatchResult.text = "You Win!"
                case (2, 1):
                    self.MatchResult.text = "You Lose!"
                default:
                    break
                
            }
        }

        
        



        

        // Do any additional setup after loading the view.
    }

    @IBAction func PlayAgainButton(_ sender: Any) {
        
        self.presentingViewController!.dismiss(animated: true, completion: nil)
    }
    

    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
