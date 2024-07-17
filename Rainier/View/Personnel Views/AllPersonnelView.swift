//
//  AllPersonnelView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/29/24.
//

import SwiftUI

struct AllPersonnelView: View {
    
    @Environment(Tour.self) var tour
    
    var body: some View {
        NavigationStack{
            
            VStack(alignment: .leading){
                
                NavigationLink(destination: ExpandedPersonView()){
                    VStack(spacing: 8){
                        ForEach(tour.members){ member in
                            HStack {
                                HStack(alignment: .top){
                                    Image(systemName: "person.crop.circle")
                                        .font(.system(size: 32, weight: .medium))
                                    
                                    VStack(alignment: .leading, spacing: 2){
                                        Text("\(member.name)")
                                            .dsTextStyle(.panelHeader)
                                        Text("\(member.title)")
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
}

#Preview {
    AllPersonnelView()
}
