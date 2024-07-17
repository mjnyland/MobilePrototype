//
//  CalendarView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/23/24.
//

import SwiftUI

enum CalendarTabs: Int {
    case overview = 1
    case documents = 2
    case guestList = 3
    case contacts = 4
}

struct CalendarView: View {
    
    @Binding var isAddPresented: Bool
    @Environment(Tour.self) var tour
    @State var selectedCalendarTab: CalendarTabs = .overview
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            VStack(spacing: 16){
                HStack {
                    HStack {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 32, height: 32)
                            .cornerRadius(8.0)
                            .opacity(0.15)
                        
                        VStack(alignment: .leading){
                            // Body Bold
                            Text("World Tour: West Coast")
                                .font(
                                    Font.custom("SF Pro", size: 15)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.white)
                            // Detail
                            Text("Boxer Brigade")
                                .font(Font.custom("SF Pro", size: 13))
                                .foregroundColor(Color(red: 0.88, green: 0.88, blue: 1))
                                .opacity(0.5)
                        }
                    }
                    Spacer()
                    
                    Button(){
                        isAddPresented.toggle()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(
                                Font.custom("SF Pro", size: 24)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.white)
                    }
                }
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(Color(red: 0, green: 0.13, blue: 0.35))
            
            TourDatesView()
            
            ZStack(alignment: .bottom) {
                
                VStack(spacing: 0){
                    //Tabs
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 6){
                            Button(){
                                selectedCalendarTab = .overview
                            } label: {
                                
                                HStack(spacing: 4) {
                                    
                                    Image(systemName: "list.bullet")
                                        .dsTextStyle(.tabBody)
                                    
                                    Text("Overview")
                                        .dsTextStyle(.tabBody)
                                    
                                }
                                .padding(.horizontal, 10)
                                .padding(.vertical, 8)
                                .background(selectedCalendarTab == .overview ? Color(red: 0.9, green: 0.96, blue: 1) : Color.white)
                                .foregroundColor(selectedCalendarTab == .overview ? Color(red: 0.04, green: 0.4, blue: 0.82) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 37)
                                        .stroke(selectedCalendarTab == .overview ? Color.clear : Color(red: 0.94, green: 0.95, blue: 0.97), lineWidth: 1)
                                )
                                .dsTextStyle(.navBody)
                                .cornerRadius(37)
                                
                                
                            }
                            
                            
                            Button(){
                                selectedCalendarTab = .documents
                            } label: {
                                HStack(spacing: 4) {
                                    Image(systemName: "doc.text")
                                        .dsTextStyle(.tabBody)
                                    Text("Files")
                                        .dsTextStyle(.tabBody)
                                    
                                }
                                .padding(.horizontal, 10)
                                .padding(.vertical, 8)
                                .background(selectedCalendarTab == .documents ? Color(red: 0.9, green: 0.96, blue: 1) : Color.white)
                                .foregroundColor(selectedCalendarTab == .documents ? Color(red: 0.04, green: 0.4, blue: 0.82) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 37)
                                        .stroke(selectedCalendarTab == .documents ? Color.clear : Color(red: 0.94, green: 0.95, blue: 0.97), lineWidth: 1)
                                )
                                .dsTextStyle(.navBody)
                                .cornerRadius(37)
                                
                            }
                            
                            Button(){
                                selectedCalendarTab = .guestList
                            } label: {
                                
                                NavigationLink(destination: GuestListView()){
                                    HStack(spacing: 4) {
                                        Image(systemName: "ticket")
                                            .dsTextStyle(.tabBody)
                                        Text("Guest List")
                                            .dsTextStyle(.tabBody)
                                        
                                    }
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 8)
                                    .background(selectedCalendarTab == .guestList ? Color(red: 0.9, green: 0.96, blue: 1) : Color.white)
                                    .foregroundColor(selectedCalendarTab == .guestList ? Color(red: 0.04, green: 0.4, blue: 0.82) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 37)
                                            .stroke(selectedCalendarTab == .guestList ? Color.clear : Color(red: 0.94, green: 0.95, blue: 0.97), lineWidth: 1)
                                    )
                                    .dsTextStyle(.navBody)
                                    .cornerRadius(37)
                                }
                                
                                
                            }
                            
                            Button(){
                                selectedCalendarTab = .contacts
                            } label: {
                                HStack(spacing: 4) {
                                    Image(systemName: "person.crop.circle")
                                        .dsTextStyle(.tabBody)
                                    Text("Contacts")
                                        .dsTextStyle(.tabBody)
                                    
                                }
                                .padding(.horizontal, 10)
                                .padding(.vertical, 8)
                                .background(selectedCalendarTab == .contacts ? Color(red: 0.9, green: 0.96, blue: 1) : Color.white)
                                .foregroundColor(selectedCalendarTab == .contacts ? Color(red: 0.04, green: 0.4, blue: 0.82) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 37)
                                        .stroke(selectedCalendarTab == .contacts ? Color.clear : Color(red: 0.94, green: 0.95, blue: 0.97), lineWidth: 1)
                                )
                                .dsTextStyle(.navBody)
                                .cornerRadius(37)
                                
                            }
                            
                        }
                        .padding(.top, 16)
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16)
                    .scrollClipDisabled()
                    .background(.white)
                    
                    switch selectedCalendarTab {
                    case .overview:
                        OverviewView() //pass in selected state variable
                    case .documents:
                        DocumentsView()
                    case .guestList:
                        GuestListView()
                    case .contacts:
                        ContactsView()
                    }
                }
            }
            .cornerRadius(24.0)
            .background(Color(red: 0, green: 0.13, blue: 0.35))
        }
        
        
    }
}

//#Preview {
//    CalendarView()
//}
