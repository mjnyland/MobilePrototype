//
//  PersonnelView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/23/24.
//

import SwiftUI

enum PersonnelTab: Int {
    case all = 1
    case groups = 2
}

struct PersonnelView: View {
    
    @Environment(Tour.self) var tour
    
    @State private var isAddPresented = false
    
    @State var selectedPersonnelTab: PersonnelTab = .all
    
    var body: some View {
        VStack(spacing: 0){
            //Tour name and Add
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
            .padding(16)
            .background(Color(red: 0, green: 0.13, blue: 0.35))
            
            VStack(alignment: .leading){
                
                VStack(alignment: .leading, spacing: 8){
                    
                    //Title
                    Text("Personnel")
                        .dsTextStyle(.pageHeadingTwo)
                    
                    // Search
                    HStack(spacing: 8) {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color(red: 0.38, green: 0.43, blue: 0.49))
                        Text("Search personnel")
                            .foregroundColor(Color(red: 0.38, green: 0.43, blue: 0.49))
                        
                        Spacer()
                    }
                    .padding(12)
                    .background(Color(red: 0.96, green: 0.97, blue: 0.98))
                    .cornerRadius(8.0)
                    
                    //All vs Groups
                    HStack(spacing: 0){
                        // Create a selected state variable
                        
                        Button(){
                            selectedPersonnelTab = .all
                        } label: {
                            Text("All")
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(selectedPersonnelTab == .all ? Color(red: 0.94, green: 0.95, blue: 0.97) : Color.white)
                                .foregroundColor(selectedPersonnelTab == .all ? Color(red: 0.12, green: 0.16, blue: 0.2) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                .font(Font.custom("SF Pro", size: 16))
                                .cornerRadius(37)
                        }
                        
                        Button(){
                            selectedPersonnelTab = .groups
                        } label: {
                            Text("Groups")
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(selectedPersonnelTab == .groups ? Color(red: 0.94, green: 0.95, blue: 0.97) : Color.white)
                                .foregroundColor(selectedPersonnelTab == .groups ? Color(red: 0.12, green: 0.16, blue: 0.2) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                .font(Font.custom("SF Pro", size: 16))
                                .cornerRadius(37)
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 8)
                    
                    switch selectedPersonnelTab {
                    case .all:
                        AllPersonnelView()
                    case .groups:
                        GroupsView()
                    }
                    
                    
                    
                }
                .padding(16)
                
            }
            .background(.white)
            .cornerRadius(24.0)
        }
        .background(Color(red: 0, green: 0.13, blue: 0.35))
        
    }
}


//#Preview {
//    PersonnelView()
//}
