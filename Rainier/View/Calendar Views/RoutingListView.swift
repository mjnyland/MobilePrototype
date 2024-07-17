//
//  RoutingListView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/30/24.
//

import SwiftUI

struct RoutingListView: View {
    
    @Environment(Tour.self) var tour
    
    var body: some View {
        VStack(spacing: 16){
            HStack {
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 32, height: 32)
                    .cornerRadius(8.0)
                    .opacity(0.25)
                
                VStack(alignment: .leading){
                    // Body Bold
                    Text("World Tour: West Coast")
                        .font(
                            Font.custom("SF Pro", size: 15)
                                .weight(.semibold)
                        )
                        .foregroundColor(.black)
                    // Detail
                    Text("Boxer Brigade")
                        .font(Font.custom("SF Pro", size: 13))
                        .foregroundColor(Color(red: 0.18, green: 0.18, blue: 0.18))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            ScrollView{
                VStack(alignment: .leading, spacing: 12){
                    ForEach(tour.dates){ date in
                        
                        HStack(spacing: 16) {
                            HStack(alignment: .center){
                                VStack(alignment: .center){
                                    Text("\(date.date, formatter: dayNumFormatter)")
                                        .dsTextStyle(.navBodyEmphasized)
                                    Text("\(date.date, formatter: dayAbrevFormatter)")
                                        .dsTextStyle(.navBody)
                                }
                                .frame(width: 50)
                                .padding(.vertical, 16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.5)
                                        .stroke(Color.gray)
                                        .opacity(0.15)
                                    
                                )
                            }
                            .foregroundColor(.black)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("\(date.venues[0].name)")
                                    .dsTextStyle(.panelHeader)
                                Text("\(date.venues[0].address)")
                                    .dsTextStyle(.panelDetail)
                            }
                            
                            Spacer()

                        }
                        .frame(maxWidth: .infinity)
                        
                        Divider()
                        
                    }
                    
                }
            }
        }
        .padding(16)
        .background(Color.white)
        
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


#Preview {
    RoutingListView()
}
