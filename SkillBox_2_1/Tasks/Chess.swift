//
//  Chess.swift
//  SkillBox_2_1
//
//  Created by Александр Уткин on 08.01.2021.
//  Copyright © 2021 Александр Уткин. All rights reserved.
//

import Foundation

typealias chessPosition = (String, Int)

enum Position {
    
    case play, shah, mat
}

protocol ChessDelegate {
    
    func showStepComputer(lastPosition: chessPosition) -> chessPosition
}

protocol AssesmentPosition {
    var assesment: Position { get }
    
    func returnAssesment(newPosition: [chessPosition]) -> Position
}


class ChessGame {
    
    //для простоты игра ведется одной ладьей
    //реализации протоколов не делаю, в задаче вроде про это не сказано
    
    var positionWhite: chessPosition = ("A", 1)
    var positionBlack: chessPosition = ("H", 8)
        
    var delegate: ChessDelegate?
    var assesmentDelegate: AssesmentPosition?
    
    func playChess() {
        
        var currentAssesment = assesmentDelegate?.returnAssesment(newPosition: [positionWhite, positionBlack])
                        
        while currentAssesment != Position.mat {
            //ход человека
            positionWhite = ("A", 5)
            //ход компьютера
            if let delegate = delegate {
                positionBlack = delegate.showStepComputer(lastPosition: positionBlack)
            }
            currentAssesment = assesmentDelegate?.returnAssesment(newPosition: [positionWhite, positionBlack])
        }
                
    }
}

struct ChessDrive: ChessDelegate {
    func showStepComputer(lastPosition: chessPosition) -> chessPosition {
        let newPosition = lastPosition
        return newPosition
    }
    
}

struct Assesment: AssesmentPosition {
    var assesment: Position
    
    func returnAssesment(newPosition: [chessPosition]) -> Position {
        var result: Position = .play
        
        let newResult = Int.random(in: 1...3)
        if newResult == 1 {
            result = .play
        } else if newResult == 2 {
            result = .shah
        } else {
            result = .mat
        }
    return result
    }
}

