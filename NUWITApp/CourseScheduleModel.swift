//
//  CourseScheduleModel.swift
//  NUWITApp
//
//  Created by Natalie Laliberte on 11/15/22.
//

import Foundation

struct CourseScheduleModel {
    let courses: Courses
    let courseTimes: CourseTimes
    let courseType: CourseType
}
    
enum Courses: String, Decodable {
    case algorithms = "Algorithms"
    case astronomy = "Astronomy"
    case calculus = "Calculus"
    case worldHistory = "World History"
}

enum CourseTimes: String, Decodable {
    case algorithmsStartTime = "10:00 AM"
    case astronomyStartTime = "12:00 PM"
    case calculusStartTime = "2:30 PM"
    case worldHistoryStartTime = "6:00 PM"
}

enum CourseType {
    case cs
    case math
    case naturalScience
    case history
}
