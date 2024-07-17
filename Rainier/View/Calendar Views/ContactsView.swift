//
//  ContactsView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/29/24.
//

import SwiftUI

struct ContactsView: View {
    @Environment(Tour.self) var tour
    var body: some View {
        
        ScrollView{
            Divider()
                .padding(.horizontal, 16)
            
            VStack(alignment: .leading){
                
                
                
                VStack{
                    ForEach(tour.dates[0].contacts){ contact in
                        
                        
                        VStack(alignment: .leading, spacing: 8){
                            
                            //Contact Container
                            VStack(alignment: .leading, spacing: 4){
                                
                                HStack{
                                    //File Names
                                    VStack(alignment: .leading){
                                        Text("\(contact.name)")
                                            .dsTextStyle(.panelHeader)
                                            .padding(.bottom, 2)
                                        Text("\(contact.title)")
                                            .dsTextStyle(.panelDetail)
                                    }
                                    
                                    Spacer()
                                    
                                    //Icons
                                    
                                    HStack{
                                        HStack{
                                            VStack(){
                                                Image(systemName: "phone")
                                                    .font(.system(size: 12, weight: .medium))
                                            }
                                            .padding(8)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .inset(by: 0.5)
                                                    .stroke(Color.gray)
                                                    .opacity(0.15)
                                                
                                            )
                                        }
                                        HStack{
                                            VStack(){
                                                Image(systemName: "text.bubble")
                                                    .font(.system(size: 12, weight: .medium))
                                            }
                                            .padding(8)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .inset(by: 0.5)
                                                    .stroke(Color.gray)
                                                    .opacity(0.15)
                                                
                                            )
                                        }
                                        HStack{
                                            VStack(){
                                                Image(systemName: "square.and.arrow.up")
                                                    .font(.system(size: 12, weight: .medium))
                                            }
                                            .padding(8)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 8)
                                                    .inset(by: 0.5)
                                                    .stroke(Color.gray)
                                                    .opacity(0.15)
                                                
                                            )
                                        }
                                    }
                                }
                                
                                Divider()
                                
                                Text("See more")
                                    .dsTextStyle(.panelDetail)
                                    .padding(.top, 8)
                                
                                
                                
                            }
                            .padding(16)
                            .frame(minWidth: 320, alignment: .leading)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.94, green: 0.95, blue: 0.97))
                                
                            )
                            
                            
                            
                        }
                        
                    }
                    
                }
                .padding(16)
                .padding(.bottom, 80)
                .background(.white)
                
                Spacer()
                
            }
        }
        .background(.white)
        
        
       
    }
}

#Preview {
    ContactsView()
}
