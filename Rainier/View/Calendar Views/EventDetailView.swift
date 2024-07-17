//
//  EventDetailView.swift
//  Rainier
//
//  Created by Michael Nyland on 6/6/24.
//

import SwiftUI

struct EventDetailView: View {
    
    @Environment(Tour.self) var tour
    
    var event: SchedEvent
    var date: TourDate
    
    var body: some View {
        
        VStack(spacing: 12){
            
            ZStack{
                
                Rectangle()
                    .foregroundColor(Color.white) // Set the color of the rectangle
                    .frame(maxWidth: .infinity)
                    .frame(height: 120)
                    .offset(y: 85)
                
                
                
                VStack(spacing: 24){
                    //Title
                    VStack(alignment: .leading, spacing: 2){
                        Text(event.title)
                            .dsTextStyle(.pageHeading)
                        
                        HStack{
                            Text("\(date.date.formattedShort())")
                                .dsTextStyle(.pageDetail)
                            Dot()
                            Text("Direct")
                                .dsTextStyle(.pageDetail)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                    }
                    
                    
                    //Card
                    VStack(alignment: .leading){
                        HStack(alignment: .top, spacing: 16){
                            
                            Image(systemName: "airplane")
                                .frame(width: 20)
                            
                            VStack(alignment: .leading, spacing: 2){
                                Text("United 8642")
                                    .dsTextStyle(.panelHeader)
                                HStack{
                                    Text("2h 35m")
                                        .dsTextStyle(.panelDetail)
                                    Dot()
                                    Text("Boeing 747")
                                        .dsTextStyle(.panelDetail)
                                }
                            }
                            
                        }
                        
                        HStack(spacing: 16){
                            
                            VStack(spacing: 0){
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 8, height: 8)
                                Rectangle()
                                    .frame(width: 1, height: 50)
                                    .foregroundColor(Color(red: 0.49, green: 0.77, blue: 0.98))
                                
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 8, height: 8)
                            }
                            .frame(width: 20)
                            
                            VStack(spacing: 16){
                                VStack(alignment: .leading){
                                    Text("8:05 AM EST")
                                        .dsTextStyle(.panelDetail)
                                    Text("Laguardia International Airport")
                                        .dsTextStyle(.panelHeader)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                                VStack(alignment: .leading){
                                    Text("12:35 PM PDT")
                                        .dsTextStyle(.panelDetail)
                                    Text("Las Vegas International Airport")
                                        .dsTextStyle(.panelHeader)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                        }
                        
                        
                        
                        
                    }
                    .padding(16)
                    .background(Color.white)
                    .cornerRadius(16.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16.0)
                            .stroke(Color(red: 0.94, green: 0.95, blue: 0.97), lineWidth: 1)
                    )
                }
                .padding(16)
                
            }
            .background(Color(red: 0, green: 0.13, blue: 0.35))
            
            
            VStack(alignment: .leading){
                Text("Passengers & Locators")
                    .dsTextStyle(.sectionTitle)
                
                HStack(spacing: 4) {
                    Text("AA2353")
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 8)
                .background(Color(red: 0.9, green: 0.96, blue: 1))
                .foregroundColor(Color(red: 0.04, green: 0.4, blue: 0.82))
                .dsTextStyle(.navBody)
                .cornerRadius(37)
                
                
                VStack(spacing: 8){
                    ForEach(tour.members){ member in
                        HStack {
                            HStack(alignment: .top){
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 32, weight: .medium))
                                
                                VStack(alignment: .leading){
                                    Text("\(member.name)")
                                        .dsTextStyle(.panelBody)
                                    Text("Seat \(21)A")
                                        .dsTextStyle(.panelDetail)
                                }
                            }
                            .foregroundColor(.black)
                            Spacer()
                            Text("ABC123")
                                .dsTextStyle(.panelBody)
                        }
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        Divider()
                        
                    }
                    Spacer()
                }
                
            }
            .padding(16)
            .background(Color.white)
            .frame(maxHeight: .infinity)
            
            
            
            
        }
        .background(Color(red: 0.96, green: 0.97, blue: 0.98))
        
    }
}

extension Date {
    func formattedShort() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E, MMM d"
        return dateFormatter.string(from: self)
    }
}

//#Preview {
//    EventDetailView()
//}
