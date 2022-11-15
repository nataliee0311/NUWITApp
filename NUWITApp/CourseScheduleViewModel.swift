//
//  CourseScheduleViewModel.swift
//  NUWITApp
//
//  Created by Natalie Laliberte on 11/15/22.
//

import Foundation
import SwiftUI

public struct CourseScheduleViewModel {
    
    // MARK: Private Variables
    
    private let courseSchedules: [CourseScheduleModel]
    
    
    // MARK: Init
    
    init(courseSchedules: [CourseScheduleModel]) {
        self.courseSchedules = courseSchedules
    }
    
    
    // MARK: Public Variables
    
    public var courseTypes: [CourseType] {
        var courses = [CourseType]()
        for course in courseSchedules {
            courses.append(course.courseType)
        }
        return courses
    }
    
    public func courseTimes(courseName: CourseType) -> String {
        switch courseName {
        case .cs:
            return "10:00 AM"
        case .math:
            return "12:00 PM"
        case .history:
            return "2:30 PM"
        case .naturalScience:
            return "6:00 PM"
        }
    }
    
    public func courseColor(courseName: CourseType) -> Color {
        switch courseName {
        case .cs:
        return Color.red
        case .math:
            return Color.yellow
        case .history:
            return Color.blue
        case .naturalScience:
            return Color.green
        }
    }
    
    public func courseIcon(courseName: CourseType) -> String {
        switch courseName {
        case .cs:
            return "laptopcomputer"
        case .math:
            return "x.squareroot"
        case .history:
            return "book"
        case .naturalScience:
            return "testtube.2"
        }
    }
}
