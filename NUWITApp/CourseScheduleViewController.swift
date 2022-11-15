//
//  CourseScheduleViewController.swift
//  NUWITApp
//
//  Created by Natalie Laliberte on 11/10/22.
//

import SwiftUI

@main
struct CourseScheduleViewController: App {
    
    private var courseScheduleViewModel: CourseScheduleViewModel

    init() {
        courseScheduleViewModel = CourseScheduleViewModel(courseSchedules: [.init(courses: .algorithms, courseTimes: .algorithmsStartTime, courseType: .cs),
                                                                            .init(courses: .astronomy, courseTimes: .astronomyStartTime, courseType: .naturalScience),
                                                                            .init(courses: .worldHistory, courseTimes: .worldHistoryStartTime, courseType: .history),
                                                                            .init(courses: .calculus, courseTimes: .calculusStartTime, courseType: .math)])
    }
    
    var body: some Scene {
        WindowGroup {
            CourseScheduleView(viewModel: courseScheduleViewModel)
        }
    }
}
