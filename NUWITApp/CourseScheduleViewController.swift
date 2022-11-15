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
        courseScheduleViewModel = CourseScheduleViewModel(courseSchedules: [.init(courseType: .cs),
                                                                            .init(courseType: .math),
                                                                            .init(courseType: .history),
                                                                            .init(courseType: .naturalScience)])
    }
    
    var body: some Scene {
        WindowGroup {
            CourseScheduleView(viewModel: courseScheduleViewModel)
        }
    }
}
