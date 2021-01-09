//
//  FlyAndDrawGame.swift
//  SkillBox_2_1
//
//  Created by Александр Уткин on 09.01.2021.
//  Copyright © 2021 Александр Уткин. All rights reserved.
//

import Foundation

protocol Flyable {
    func fly()
}

protocol Drawable {
    func draw()
}

class Game: Flyable, Drawable {
    func fly() {
        print("i'm fly")
    }
    
    func draw() {
        print("i'm draw")
    }
}
