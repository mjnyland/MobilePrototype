//
//  ActivityView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/23/24.
//

import SwiftUI

enum ActivityTabs: Int {
    case thisTour = 1
    case allTours = 2
}

struct ActivityView: View {
    @Environment(Tour.self) var tour
    
    @State private var isAddPresented = false
    
    @State var selectedActivityTab: ActivityTabs = .thisTour
    
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
                    
                    // Title
                    Text("Activity")
                        .dsTextStyle(.pageHeadingTwo)
                    
                    // This tour vs All tours
                    HStack(spacing: 0){
                        // Create a selected state variable
                        
                        Button(){
                            selectedActivityTab = .thisTour
                        } label: {
                            Text("This tour")
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(selectedActivityTab == .thisTour ? Color(red: 0.94, green: 0.95, blue: 0.97) : Color.white)
                                .foregroundColor(selectedActivityTab == .thisTour ? Color(red: 0.12, green: 0.16, blue: 0.2) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                .font(Font.custom("SF Pro", size: 16))
                                .cornerRadius(37)
                        }
                        
                        Button(){
                            selectedActivityTab = .allTours
                        } label: {
                            Text("All tours")
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(selectedActivityTab == .allTours ? Color(red: 0.94, green: 0.95, blue: 0.97) : Color.white)
                                .foregroundColor(selectedActivityTab == .allTours ? Color(red: 0.12, green: 0.16, blue: 0.2) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                .font(Font.custom("SF Pro", size: 16))
                                .cornerRadius(37)
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 8)
                    
                    // Content
                    VStack(alignment: .leading){
                        
                        
                        switch selectedActivityTab {
                        case .thisTour:
                            ThisTourView()
                        case .allTours:
                            AllToursView()
                        }
                        
                        
                        Spacer()
                        
                    }
                    .padding(.bottom, 80)
                    .padding(.top, 12)
                    .background(Color.white)
                    
                    
                    
                }
                .padding(16)
                
            }
            .background(.white)
            .cornerRadius(24.0)
        }
        .background(Color(red: 0, green: 0.13, blue: 0.35))
        
    }
}

#Preview {
    ActivityView()
}
