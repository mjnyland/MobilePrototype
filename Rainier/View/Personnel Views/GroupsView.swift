//
//  GroupsView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/29/24.
//

import SwiftUI

struct GroupsView: View {
    @State var settings = TextStyleSettings()
    var body: some View {
        VStack(alignment: .leading){
            
            NavigationLink(destination: ExpandedPersonView()){
                
                VStack{
                    VStack(spacing: 8){
                        
                        HStack {
                            HStack(alignment: .top){
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 32, weight: .medium))
                                
                                VStack(alignment: .leading, spacing: 2){
                                    Text("Artist Party")
                                        .dsTextStyle(.panelHeader)
                                    Text("12 Members")
                                        .dsTextStyle(.panelDetail)
                                }
                            }
                            .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        Rectangle()
                            .fill(Color.gray)
                            .frame(height: 1)
                            .cornerRadius(8.0)
                            .opacity(0.15)
                            .padding(.horizontal, 16)
                        
                        
                    }
                    VStack(spacing: 8){
                        
                        HStack {
                            HStack(alignment: .top){
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 32, weight: .medium))
                                
                                VStack(alignment: .leading, spacing: 2){
                                    Text("Band Party")
                                        .dsTextStyle(.panelHeader)
                                    Text("4 Members")
                                        .dsTextStyle(.panelDetail)
                                }
                            }
                            .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        Rectangle()
                            .fill(Color.gray)
                            .frame(height: 1)
                            .cornerRadius(8.0)
                            .opacity(0.15)
                            .padding(.horizontal, 16)
                        
                        
                    }
                    VStack(spacing: 8){
                        
                        HStack {
                            HStack(alignment: .top){
                                Image(systemName: "person.crop.circle")
                                    .font(.system(size: 32, weight: .medium))
                                
                                VStack(alignment: .leading, spacing: 2){
                                    Text("Crew Party")
                                        .dsTextStyle(.panelHeader)
                                    Text("80 Members")
                                        .dsTextStyle(.panelDetail)
                                }
                            }
                            .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.vertical, 8)
                        .frame(maxWidth: .infinity)
                        Rectangle()
                            .fill(Color.gray)
                            .frame(height: 1)
                            .cornerRadius(8.0)
                            .opacity(0.15)
                            .padding(.horizontal, 16)
                        
                        
                    }
                    
                }
                
            }
            
            
            Spacer()
            
        }
        .padding(.bottom, 80)
        .padding(.top, 12)
        .background(Color.white)
    }
}

#Preview {
    GroupsView()
}
