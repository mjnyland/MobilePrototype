//
//  OverviewView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/29/24.
//

import SwiftUI

struct OverviewView: View {
    
    @Environment(Tour.self) var tour
    
    var body: some View {
        ScrollView{
            
            VStack(){
                
                // Venue Info
                VStack{
                    
                    Divider()
                    
                    LazyVStack(alignment: .leading){
                        Text("Day Off")
                            .dsTextStyle(.sectionTitle)
                            .padding(.bottom, 4)
                        Text("New York, NY")
                            .dsTextStyle(.panelHeader)
                    }
                    .padding(.vertical, 16)
                    
                    Divider()
                    
                    LazyVStack(alignment: .leading){
                        Text("Load In Day")
                            .dsTextStyle(.sectionTitle)
                            .padding(.bottom, 4)
                        VStack(alignment: .leading, spacing: 2){
                            Text("Madison Square Garden")
                                .dsTextStyle(.panelHeader)
                            Text("123 York Street, New York, NY 10001")
                                .dsTextStyle(.panelDetail)
                                //.underline(true, color: .gray)
                        }
                        
                    }
                    .padding(.vertical, 16)
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
                .background(.white)
                
                NotesPanelView()
                
                // Lodging
                LodgingPanelView()
                
                // Schedule
                SchedulePanelView()
            }
            .background(Color(red: 0.94, green: 0.95, blue: 0.97))
        }
        .background(.white)
    }
}

#Preview {
    OverviewView()
}
