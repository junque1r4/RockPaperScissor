//
//  ViewController.swift
//  RUO
//
//  Created by Macbook on 30/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var unicornButton: UIButton!
    @IBOutlet weak var monkeyButton: UIButton!
    @IBOutlet weak var ratButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var userChoise: UILabel!
    @IBOutlet weak var robotChoise: UILabel!
    @IBOutlet weak var viewBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundDesign()
        changeStatus(gameStatus: GameState.start)
    }
    
    func changeStatus(gameStatus: GameState) {
        
        switch gameStatus {
        case .win:
            restartButton.isHidden = false
            statusLabel.text = "You Win!"
        
        case .lose:
            restartButton.isHidden = false
            statusLabel.text = "You Lose!"
        
        case .draw:
            restartButton.isHidden = false
            statusLabel.text = "Oh no! draw!"
            
        case .start:
            restartButton.isHidden = true
            userChoise.isHidden = true
            robotChoise.isHidden = true
            titleLabel.text = "🤖"
            statusLabel.text = "Choose!"
        }
    }
    
    func backgroundDesign() {
        viewBackground.layer.cornerRadius = 200
        
        viewBackground.clipsToBounds = true
        
        viewBackground.backgroundColor = .orange
        viewBackground.layer.borderWidth = 2.0
//        viewBackground.layer.cornerRadius = 20
        viewBackground.layer.borderColor = UIColor.black.cgColor
        
    }
    
    func showChoises(user: String, robot: String) {
        userChoise.text = user
        robotChoise.text = robot
        userChoise.isHidden = false
        robotChoise.isHidden = false
    }
    
    
    @IBAction func unicornChoise(_ sender: UIButton) {
        let robot: Sign = randomSign()
        let user: Sign = Sign.unicorn
        
        showChoises(user: user.rawValue, robot: robot.rawValue)
        changeStatus(gameStatus: user.comparison(oponent: robot))
    }
    
    @IBAction func monkeyChoise(_ sender: UIButton) {
        let robot: Sign = randomSign()
        let user: Sign = Sign.orangutangus
        
        showChoises(user: user.rawValue, robot: robot.rawValue)
        changeStatus(gameStatus: user.comparison(oponent: robot))
    }
    
    @IBAction func ratChoise(_ sender: Any) {
        let robot: Sign = randomSign()
        let user: Sign = Sign.rat
        
        showChoises(user: user.rawValue, robot: robot.rawValue)
        changeStatus(gameStatus: user.comparison(oponent: robot))
    }
    
    @IBAction func restartChoise(_ sender: UIButton) {
        changeStatus(gameStatus: GameState.start)
    }
    
}

