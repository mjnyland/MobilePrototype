//
//  ScheduleView.swift
//  Rainier
//
//  Created by Michael Nyland on 6/6/24.
//

import SwiftUI

struct SchedulePanelView: View {
    
    @Environment(Tour.self) var tour: Tour
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Schedule")
                .dsTextStyle(.sectionTitle)
                .padding(.bottom, 4)

            ForEach(tour.dates[0].schedule) { event in
                
                
                
                if event.icon == "airplane" {
                    NavigationLink(destination: EventDetailView(event: event, date: tour.dates[0])) {
                        VStack{
                            
                            EventRow(event: event, isSoon: false)
                            
                            Divider()
                        }
                        
                    }
                    .buttonStyle(PlainButtonStyle())
                } else {
                    VStack{
                        
                        EventRow(event: event, isSoon: false)
                        
                        Divider()
                    }
                }
                
                
//                if event.id == tour.dates[0].schedule[1].id {
//                    
//                    NavigationLink(destination: EventDetailView(event: event, date: tour.dates[0])) {
//                        VStack{
//                            
//                            EventRow(event: event, isSoon: false)
//                            
//                            Divider()
//                        }
//                        
//                    }
//                    .buttonStyle(PlainButtonStyle())
//                } else {
//                    VStack{
//                        
//                        EventRow(event: event, isSoon: false)
//                        
//                        Divider()
//                    }
//                }
            }
        }
        .padding(16)
        .padding(.bottom, 80)
        .background(Color.white)
    }
}

//
//#Preview {
//    ScheduleView()
//}
