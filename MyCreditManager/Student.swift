//
//  Student.swift
//  MyCreditManager
//
//  Created by 권승용 on 2022/11/13.
//

import Foundation

enum Grades: Double {
    case APlus = 4.5
    case A = 4
    case BPlus = 3.5
    case B = 3
    case CPlus = 2.5
    case C = 2
    case DPlus = 1.5
    case D = 1
    case F = 0
}

struct Student {
    var name : String
    var classes : [(String, Grades?)] = []
}
