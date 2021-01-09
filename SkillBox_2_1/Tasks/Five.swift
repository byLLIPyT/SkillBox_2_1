//
//  Five.swift
//  SkillBox_2_1
//
//  Created by Александр Уткин on 09.01.2021.
//  Copyright © 2021 Александр Уткин. All rights reserved.
//

import Foundation

/*
могут ли реализовывать несколько протоколов:

a) классы (Class) - ДА

b) структуры (Struct) - ДА

c) перечисления (Enum) - ДА

d) кортежи (Tuples) - НЕТ
*/


protocol FirstProtocol {
    func someFunc()
}

protocol SecondProtocol {
    func anotherFunc()
}

class someClass: FirstProtocol, SecondProtocol {
    func someFunc() { }
    
    func anotherFunc() { }
}

struct someStruct: FirstProtocol, SecondProtocol {
    func someFunc() { }
    
    func anotherFunc() { }
}

enum someEnum: FirstProtocol, SecondProtocol {
    
    case on, off
    
    func someFunc() { }
    
    func anotherFunc() { }
        
}

