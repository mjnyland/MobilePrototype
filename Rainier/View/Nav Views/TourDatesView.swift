//
//  TourDatesView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/23/24.
//

import SwiftUI

extension Date {
    func isSameDay(as otherDate: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(self, inSameDayAs: otherDate)
    }
}

struct TourDatesView: View {
    
    @Environment(Tour.self) var tour
    
    var body: some View {
        // Tour dates
        VStack(alignment: .leading, spacing: 8) {
            Text("April 2024")
                .dsTextStyle(.pageHeadingTwo)
                .foregroundColor(.white)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(tour.dates) {tourDate in
                        if tourDate.date.isSameDay(as: Date()) {
                            DateBoxView(date: tourDate, isSelected: true)
                        } else {
                            DateBoxView(date: tourDate, isSelected: false)
                        }
                    }
                }
            }
            .scrollClipDisabled()
        }
        .padding(16)
        .background(Color(red: 0, green: 0.13, blue: 0.35))
    }
}

#Preview {
    TourDatesView()
}
