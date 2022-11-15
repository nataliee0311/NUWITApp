//
//  CourseScheduleViewModel.swift
//  NUWITApp
//
//  Created by Natalie Laliberte on 11/15/22.
//

import Foundation

public struct CourseScheduleViewModel {
    
    // MARK: Private Variables
    
    private let courseSchedules: [CourseScheduleModel]
    
    
    // MARK: Init
    
    init(courseSchedules: [CourseScheduleModel]) {
        self.courseSchedules = courseSchedules
    }
    
    
    // MARK: Public Variables
    
    public var courseTimes: [String] {
        var courses = [String]()
        for course in courseSchedules {
            courses.append(course.courseTimes.rawValue)
        }
        return courses
    }
    
    public var courseNames: [String] {
        var courses = [String]()
        for course in courseSchedules {
            courses.append(course.courses.rawValue)
        }
        return courses
    }
    
    public var courseIcon: [String] {
        var courses = [String]()
        for course in courseSchedules {
            switch course.courseType {
            case .cs:
                courses.append("computer")
            case .math:
                courses.append("plusSign")
            case .history:
                courses.append("book")
            case .naturalScience:
                courses.append("beaker")
            }
        }
        return courses
    }
}
