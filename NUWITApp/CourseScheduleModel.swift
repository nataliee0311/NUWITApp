//
//  CourseScheduleModel.swift
//  NUWITApp
//
//  Created by Natalie Laliberte on 11/15/22.
//

import Foundation

struct CourseScheduleModel {
    let courseType: CourseType
}

public enum CourseType: String, Decodable {
    case cs = "Algorithms"
    case math = "Astronomy"
    case history = "Art History"
    case naturalScience = "Calculus"
}
