//
//  Seven.swift
//  SkillBox_2_1
//
//  Created by Александр Уткин on 09.01.2021.
//  Copyright © 2021 Александр Уткин. All rights reserved.
//

import Foundation
import UIKit

extension CGRect {
    var centre: CGPoint { return CGPoint(x: self.maxX - self.minX, y: self.maxY - minY) }
}

extension CGRect {
    var area: CGFloat { return self.width * self.height }
}

extension UIView {
    func invisible() {
        UIView.animate(withDuration: 5) {
            self.alpha = 0
        }
    }
}

extension Comparable {
    
    func bound(min: Int, max: Int) -> Int {
        let newRand = Int.random(in: min...max)
        return newRand
    }
}

extension Array where Element == Int {
    func sum() -> Int {
        var sumInt = 0
        for el in self {
            sumInt += el
        }
        return sumInt
    }
}


