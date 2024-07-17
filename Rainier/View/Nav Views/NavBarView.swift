//
//  NavBarView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/23/24.
//

import SwiftUI

enum Tabs: Int {
    case calendar = 1
    case personnel = 2
    case activity = 3
    case profile = 4
    case routing = 5
}

struct NavBarView: View {
    
    
    @Binding var selectedTab: Tabs
    
    @Binding var isRoutingPresented: Bool
    
    
    var body: some View {
        
        ZStack{
            
            Button(){
                if(selectedTab == .calendar){
                    selectedTab = .routing
                    isRoutingPresented = true
                } else {
                    selectedTab = .calendar
                    isRoutingPresented = false
                }
                
            } label: {
                switch selectedTab {
                case .calendar:
                    HStack{
                        Image(systemName: "calendar")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(Color(red: 0.28, green: 0.64, blue: 0.95))
                        Text("Routing")
                            .font(.system(size: 16, weight: .medium))
                    }
                    .padding(12)
                    .foregroundColor(.white)
                    .background(Color(red: 0.01, green: 0.27, blue: 0.62))
                    .cornerRadius(24.0)
                
                case .routing:
                    HStack{
                        Image(systemName: "list.bullet")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(Color(red: 0.28, green: 0.64, blue: 0.95))
                        Text("Day View")
                            .font(.system(size: 16, weight: .medium))
                    }
                    .padding(12)
                    .foregroundColor(.white)
                    .background(Color(red: 0.01, green: 0.27, blue: 0.62))
                    .cornerRadius(24.0)
                default:
                    HStack{}
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 240)
        .ignoresSafeArea()
        
        HStack(spacing: 32) {
            Button(){
                selectedTab = .calendar
                print(selectedTab)
            } label: {
                VStack(spacing: 2){
                    Image(systemName: "calendar")
                        .font(.system(size: 14, weight: .medium))
                    Text("Calendar")
                        .font(.system(size: 14, weight: .medium))
                }
            }
            .foregroundColor(selectedTab == .calendar ? Color(red: 0.13, green: 0.53, blue: 0.92) : Color.gray)
            
            Button(){
                selectedTab = .personnel
                print(selectedTab)
            } label: {
                VStack(spacing: 2){
                    Image(systemName: "person.3.fill")
                        .font(.system(size: 14, weight: .medium))
                    Text("Personnel")
                        .font(.system(size: 13, weight: .medium))
                }
            }
            .foregroundColor(selectedTab == .personnel ? Color(red: 0.13, green: 0.53, blue: 0.92) : Color.gray)
            
            Button(){
                selectedTab = .activity
                print(selectedTab)
            } label: {
                VStack(spacing: 2){
                    Image(systemName: "bell.fill")
                        .font(.system(size: 14, weight: .medium))
                    Text("Activity")
                        .font(.system(size: 14, weight: .medium))
                }
            }
            .foregroundColor(selectedTab == .activity ? Color(red: 0.13, green: 0.53, blue: 0.92) : Color.gray)
            
            Button(){
                selectedTab = .profile
                print(selectedTab)
            } label: {
                VStack(spacing: 2){
                    Image(systemName: "person.crop.circle")
                        .font(.system(size: 14, weight: .medium))
                    Text("Profile")
                        .font(.system(size: 14, weight: .medium))
                }
                
            }
            .foregroundColor(selectedTab == .profile ? Color(red: 0.13, green: 0.53, blue: 0.92) : Color.gray)
        }
        .frame(height: 72)
        .frame(maxWidth: .infinity)
        .background(.white)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(red: 0, green: 0.13, blue: 0.35))
                .opacity(0.10),
            alignment: .top
        )
    }
}

//#Preview {
//    NavBarView()
//}
