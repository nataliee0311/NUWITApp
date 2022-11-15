//
//  CourseScheduleView.swift
//  NUWITApp
//
//  Created by Natalie Laliberte on 11/10/22.
//

import SwiftUI

struct CourseScheduleView: View {
    
    var courseScheduleViewModel: CourseScheduleViewModel

    init(viewModel: CourseScheduleViewModel) {
        courseScheduleViewModel = viewModel
    }
    
    var body: some View {
        VStack {
            ForEach(courseScheduleViewModel.courseTypes, id: \.self) { course in
                ZStack(alignment: .leading) {
                    Rectangle().foregroundColor(courseScheduleViewModel.courseColor(courseName: course))
                    HStack(spacing: 12) {
                        Text(courseScheduleViewModel.courseTimes(courseName: course))
                            .foregroundColor(Color.white)
                            .bold()
                        Text(course.rawValue.uppercased())
                            .foregroundColor(Color.white)
                            .bold()
                            .lineLimit(1)
                        Spacer()
                        Image(systemName: courseScheduleViewModel.courseIcon(courseName: course))
                            .foregroundColor(Color.white)
                            .frame(width: 100, height: 100)
                    }.padding(.leading, 20)
                    
                }
            }
            
        }
        .padding()
    }
}

