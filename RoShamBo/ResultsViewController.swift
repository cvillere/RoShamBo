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
            switch (opponentPlay, yourPlay) {
                case (1, 1), (1, 1), (2, 2), (2, 2), (3, 3), (3, 3):
                    self.MatchResult.text = "You Tie!"
                case (1, 2):
                    self.MatchResult.text = "You Win!"
                case (2, 1):
                    self.MatchResult.text = "You Lose!"
                case (1, 3):
                    self.MatchResult.text = "You Lose!"
                case (3, 1):
                    self.MatchResult.text = "You Win!"
                case (2, 3):
                    self.MatchResult.text = "You Win!"
                case (3, 2):
                    self.MatchResult.text = "You Lose!"
                default:
                    break
                
            }
        }

        



        

        // Do any additional setup after loading the view.
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
