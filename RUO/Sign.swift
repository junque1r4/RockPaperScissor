//
//  Sign.swift
//  RUO
//
//  Created by Macbook on 30/08/22.
//

import Foundation

func randomSign() -> Sign {
    let random = Int.random(in: 0 ... 2)
    
    if random == 0 {
        return .orangutangus
    } else if random == 1 {
        return .rat
    } else {
        return .unicorn
    }
}

enum Sign: String {
    case unicorn = "🦄"
    case rat = "🐀"
    case orangutangus = "🦧"
    func comparison(oponent: Sign) -> GameState {
        /*
         This function compare the user choise with the computer choise to choose
         which win!
         
         rato vence unicórnio
         unicórnio vence orangotango
         orangotango vence rato
         */
        switch self {
            // Match Unicorse User Choise
        case .unicorn:
            switch oponent {
            case .unicorn:
                return GameState.draw
                
            case .orangutangus:
                return GameState.win
            
            case .rat:
                return GameState.lose
            }
            // Match Rat User Choise
        case .rat:
            switch oponent {
            case .rat:
                return GameState.draw
                
            case .unicorn:
                return GameState.win
            
            case .orangutangus:
                return GameState.lose
            }
            // Match Orangutangus user choise
        case .orangutangus:
            switch oponent {
            case .orangutangus:
                return GameState.draw
            
            case .unicorn:
                return GameState.lose
                
            case .rat:
                return GameState.win
            }
        }
    }
    
    
}
