//
//  DateBoxView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/22/24.
//

import SwiftUI

struct DateBoxView: View {
    
    let date: TourDate
    @State var isSelected: Bool
    @State var settings = TextStyleSettings()
    
    let blue6 = Color(red: 0, green: 0.2, blue: 0.49)
    var body: some View {
        HStack {
            VStack {
                Text("\(date.date, formatter: dayNumFormatter)")
                    .dsTextStyle(.navBodyEmphasized)
                    .foregroundColor(.white)
                
                Text("\(date.date, formatter: dayAbrevFormatter)")
                    .dsTextStyle(.navBody)
                    .foregroundColor(.white)
            }
            
            Rectangle()
                .fill(Color.white)
                .frame(width: 1, height: 32)
            
            VStack(alignment: .leading) {
                
                Text("Show Day")
                    .dsTextStyle(.navBody)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("New York, NY")
                    .dsTextStyle(.navBody)
                    .foregroundColor(.white)
            }
        }
        .padding(16)
        .background(isSelected ? blue6 : Color(red: 0, green: 0.13, blue: 0.35))
        .cornerRadius(16.0)
        .overlay(
            Group {
                if isSelected {
                    RoundedRectangle(cornerRadius: 16)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.04, green: 0.4, blue: 0.82), lineWidth: 1)
                } else {
                    RoundedRectangle(cornerRadius: 16)
                        .inset(by: 0.5)
                        .stroke(.white, lineWidth: 1)
                }
            }
        )
        .opacity(isSelected ? 1.0 : 0.33)
        .frame(minHeight: 56)
    }
}


private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .none
    return formatter
}()

private let dayNumFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "d"
    return formatter
}()

private let dayAbrevFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "E" // "E" gives the abbreviated day of the week, e.g., "Mon", "Tue"
    return formatter
}()


//
//#Preview {
//    DateBoxView()
//}
