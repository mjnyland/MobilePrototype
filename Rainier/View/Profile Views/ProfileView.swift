//
//  ProfileView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/23/24.
//

import SwiftUI

enum ProfileTab: Int {
    case profile = 1
    case resume = 2
    case settings = 3
}

struct ProfileView: View {
    @Environment(Tour.self) var tour
    
    @State private var isAddPresented = false
    @State var selectedProfileTab: ProfileTab = .profile
    
    
    var body: some View {
        VStack(spacing: 0){
            //Tour name and Add
            VStack(spacing: 16){
                HStack {
                    
                    HStack {
                        HStack(alignment: .center){
                            Image(systemName: "person.crop.circle")
                                .font(.system(size: 40, weight: .medium))
                            
                            VStack(alignment: .leading, spacing: 4){
                                Text("Emily Tickens")
                                    .dsTextStyle(.pageHeadingTwo)
                                Text("Monitor Engineer")
                                    .font(.system(size: 13, weight: .regular))
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.vertical, 8)
                    .frame(maxWidth: .infinity)
                    
                    Spacer()
                    
                    
                    
                    Button(){
                        isAddPresented.toggle()
                    } label: {
                        
                        VStack(){
                            Image(systemName: "pencil")
                                .font(.system(size: 16, weight: .medium))
                                .padding(8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.5)
                                        .stroke(Color.gray)
                                        .opacity(0.15)
                                    
                                )
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
            .padding(16)
            .background(Color(red: 0, green: 0.13, blue: 0.35))
            
            VStack(alignment: .leading){
                
                VStack(alignment: .leading, spacing: 8){
                    
                    //Pages
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 0){
                            // Create a selected state variable
                            Button(){
                                selectedProfileTab = .profile
                            } label: {
                                Text("Profile")
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(selectedProfileTab == .profile ? Color(red: 0.94, green: 0.95, blue: 0.97) : Color.white)
                                    .foregroundColor(selectedProfileTab == .profile ? Color(red: 0.12, green: 0.16, blue: 0.2) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                    .dsTextStyle(.tabBody)
                                    .cornerRadius(37)
                            }
                            Button(){
                                selectedProfileTab = .resume
                            } label: {
                                Text("Resume")
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(selectedProfileTab == .resume ? Color(red: 0.94, green: 0.95, blue: 0.97) : Color.white)
                                    .foregroundColor(selectedProfileTab == .resume ? Color(red: 0.12, green: 0.16, blue: 0.2) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                    .dsTextStyle(.tabBody)
                                    .cornerRadius(37)
                            }
                            Button(){
                                selectedProfileTab = .settings
                            } label: {
                                Text("Settings")
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(selectedProfileTab == .settings ? Color(red: 0.94, green: 0.95, blue: 0.97) : Color.white)
                                    .foregroundColor(selectedProfileTab == .settings ? Color(red: 0.12, green: 0.16, blue: 0.2) : Color(red: 0.6, green: 0.65, blue: 0.69))
                                    .dsTextStyle(.tabBody)
                                    .cornerRadius(37)
                            }
                        }
                    }
                    .scrollClipDisabled()
                    .background(.white)
                    
                    // here
                    
                    switch selectedProfileTab {
                    case .profile:
                        TravelProfileView()
                    case .resume:
                        ResumeView()
                    case .settings:
                        SettingsView()
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


#Preview {
    ProfileView()
}
