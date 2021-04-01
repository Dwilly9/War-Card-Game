//
//  WarViewController.swift
//  Final-Project
//
//  Created by Daniel Williams on 5/3/18.
//  Copyright © 2018 Daniel Williams. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class WarViewController: UIViewController {
    
    @IBOutlet weak var redDeck: UIImageView!
    @IBOutlet weak var blackDeck: UIImageView!
    
    var loopTimes = 1
    
    var redCardNum = 0
    var blackCardNum = 0
    // Value that determines what card will be displayed and used in the game
    
    var redCount = 0
    var blackCount = 0
    // Counts how many cards each player has in their deck, the one with the most
    // at the end is the winner
    
    var redArrayPlace = 0
    var blackArrayPlace = 0
    //dictates where in each array the most recently added number will go (used because function requires it)
    
    var usedRedCards: [Int] = []
    var usedBlackCards: [Int] = []
    // Arrays used to store the values of cards that have already been used, so
    // that repeats are avoided
    
    @IBAction func startButton(_ sender: Any) {

        if loopTimes <= 26{
            redCardNum = Int(arc4random_uniform(27))
            
            if usedRedCards.contains(redCardNum) == true {
                while usedRedCards.contains(redCardNum) == true {
                     redCardNum = Int(arc4random_uniform(27))
                }
            }
                switch redCardNum {
                case 1:
                    redDeck.image = #imageLiteral(resourceName: "2H")
                case 2:
                    redDeck.image = #imageLiteral(resourceName: "3H")
                case 3:
                    redDeck.image = #imageLiteral(resourceName: "4H")
                case 4:
                    redDeck.image = #imageLiteral(resourceName: "5H")
                case 5:
                    redDeck.image = #imageLiteral(resourceName: "6H")
                case 6:
                    redDeck.image = #imageLiteral(resourceName: "7H")
                case 7:
                    redDeck.image = #imageLiteral(resourceName: "8H")
                case 8:
                    redDeck.image = #imageLiteral(resourceName: "9H")
                case 9:
                    redDeck.image = #imageLiteral(resourceName: "10H")
                case 10:
                    redDeck.image = #imageLiteral(resourceName: "JH")
                case 11:
                    redDeck.image = #imageLiteral(resourceName: "QH")
                case 12:
                    redDeck.image = #imageLiteral(resourceName: "KH")
                case 13:
                    redDeck.image = #imageLiteral(resourceName: "AH")
                case 14:
                    redDeck.image = #imageLiteral(resourceName: "2D")
                case 15:
                    redDeck.image = #imageLiteral(resourceName: "3D")
                case 16:
                    redDeck.image = #imageLiteral(resourceName: "4D")
                case 17:
                    redDeck.image = #imageLiteral(resourceName: "5D")
                case 18:
                    redDeck.image = #imageLiteral(resourceName: "6D")
                case 19:
                    redDeck.image = #imageLiteral(resourceName: "7D")
                case 20:
                    redDeck.image = #imageLiteral(resourceName: "8D")
                case 21:
                    redDeck.image = #imageLiteral(resourceName: "9D")
                case 22:
                    redDeck.image = #imageLiteral(resourceName: "10D")
                case 23:
                    redDeck.image = #imageLiteral(resourceName: "JD")
                case 24:
                    redDeck.image = #imageLiteral(resourceName: "QD")
                case 25:
                    redDeck.image = #imageLiteral(resourceName: "KD")
                case 26:
                    redDeck.image = #imageLiteral(resourceName: "AD")
                default:
                    redDeck.image = #imageLiteral(resourceName: "Red_back")
                //displays the randomly assigned card number on the screen
            }
            
            blackCardNum = Int(arc4random_uniform(27))
            
            if usedBlackCards.contains(blackCardNum) == true {
                while usedBlackCards.contains(blackCardNum) == true {
                     blackCardNum = Int(arc4random_uniform(27))
                }
            }
            switch blackCardNum {
            case 1:
                blackDeck.image = #imageLiteral(resourceName: "2S")
            case 2:
                blackDeck.image = #imageLiteral(resourceName: "3S")
            case 3:
                blackDeck.image = #imageLiteral(resourceName: "4S")
            case 4:
                blackDeck.image = #imageLiteral(resourceName: "5S")
            case 5:
                blackDeck.image = #imageLiteral(resourceName: "6S")
            case 6:
                blackDeck.image = #imageLiteral(resourceName: "7S")
            case 7:
                blackDeck.image = #imageLiteral(resourceName: "8S")
            case 8:
                blackDeck.image = #imageLiteral(resourceName: "9S")
            case 9:
                blackDeck.image = #imageLiteral(resourceName: "10S")
            case 10:
                blackDeck.image = #imageLiteral(resourceName: "JS")
            case 11:
                blackDeck.image = #imageLiteral(resourceName: "QS")
            case 12:
                blackDeck.image = #imageLiteral(resourceName: "KS")
            case 13:
                blackDeck.image = #imageLiteral(resourceName: "AS")
            case 14:
                blackDeck.image = #imageLiteral(resourceName: "2C")
            case 15:
                blackDeck.image = #imageLiteral(resourceName: "3C")
            case 16:
                blackDeck.image = #imageLiteral(resourceName: "4C")
            case 17:
                blackDeck.image = #imageLiteral(resourceName: "5C")
            case 18:
                blackDeck.image = #imageLiteral(resourceName: "6C")
            case 19:
                blackDeck.image = #imageLiteral(resourceName: "7C")
            case 20:
                blackDeck.image = #imageLiteral(resourceName: "8C")
            case 21:
                blackDeck.image = #imageLiteral(resourceName: "9C")
            case 22:
                blackDeck.image = #imageLiteral(resourceName: "10C")
            case 23:
                blackDeck.image = #imageLiteral(resourceName: "JC")
            case 24:
                blackDeck.image = #imageLiteral(resourceName: "QC")
            case 25:
                blackDeck.image = #imageLiteral(resourceName: "KC")
            case 26:
                blackDeck.image = #imageLiteral(resourceName: "AC")
            default:
                blackDeck.image = #imageLiteral(resourceName: "Gray_back")
            //displays the randomaly assigned card number on the screen
            }
            
            usedRedCards.insert(redCardNum, at: redArrayPlace)
            usedBlackCards.insert(blackCardNum, at: blackArrayPlace)
            
            if redCardNum == blackCardNum {
                while redCardNum == blackCardNum {
                    
                    //insert code for popup notification
                    func alertMe(_ sender: Any) {
                        let alert = UIAlertController(title: "My Alert", message: "This means War!", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: NSLocalizedString("Commence!", comment: "Default action"), style: .`default`, handler: { _ in
                            NSLog("The \"OK\" alert occured.")        }))
                        self.present(alert, animated: true, completion: nil)    }
                    
                    redCardNum = Int(arc4random_uniform(27))
                    if usedRedCards.contains(redCardNum) {
                        while usedRedCards.contains(redCardNum) {
                            redCardNum = Int(arc4random_uniform(27))
                        }
                    }
 
                    blackCardNum = Int(arc4random_uniform(27))
                            
                    if usedBlackCards.contains(blackCardNum) {
                        while usedBlackCards.contains(blackCardNum) {
                            blackCardNum = Int(arc4random_uniform(27))
                                }
                            }
                }
            }
            
            if redCardNum > blackCardNum {
                redCount = redCount + 2
            } else if redCardNum < blackCardNum {
                blackCount = blackCount + 2
            }
            
            loopTimes = loopTimes + 1
            redArrayPlace = redArrayPlace + 1
            blackArrayPlace = blackArrayPlace + 1
        }
        //end of loop
        
        if redCount > blackCount {
            
            func playSoundMe(_ sender: Any) {
                var soundID: SystemSoundID = 0
                let soundFile:String=Bundle.main.path(forResource:"Victory",ofType: "wav")!
                let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
                AudioServicesCreateSystemSoundID(soundURL, &soundID)
                AudioServicesPlaySystemSound(soundID)    }
            
            func alertMe(_ sender: Any) {
                let alert = UIAlertController(title: "My Alert", message: "Red Wins!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("Hooray!", comment: "Default action"), style: .`default`, handler: { _ in
                    NSLog("The \"OK\" alert occured.")        }))
                self.present(alert, animated: true, completion: nil)    }
            
        } else if redCount < blackCount {
            
            func playSoundMe(_ sender: Any) {
                var soundID: SystemSoundID = 0
                let soundFile:String=Bundle.main.path(forResource:"Victory",ofType: "wav")!
                let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
                AudioServicesCreateSystemSoundID(soundURL, &soundID)
                AudioServicesPlaySystemSound(soundID)    }
            
            func alertMe(_ sender: Any) {
                let alert = UIAlertController(title: "My Alert", message: "Black Wins!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("Hooray! ", comment: "Default action"), style: .`default`, handler: { _ in
                    NSLog("The \"OK\" alert occured.")        }))
                self.present(alert, animated: true, completion: nil)    }
            
        }
        
    }
    //end of button action
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
