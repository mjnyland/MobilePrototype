//
//  ThisTourView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/29/24.
//

import SwiftUI

struct ThisTourView: View {
    var body: some View {
        NavigationLink(destination: ExpandedPersonView()){
            VStack(spacing: 8){
                HStack {
                    HStack(alignment: .top){
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 32, weight: .medium))
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Emily Tickens")
                                .dsTextStyle(.panelHeader)
                            Text("Hey everyone - The Bus is running 30 minutes late. We’ll leave at 10:00 AM.")
                                .dsTextStyle(.panelDetail)
                                .multilineTextAlignment(.leading)
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
                
                HStack {
                    HStack(alignment: .top){
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 32, weight: .medium))
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Emily Tickens")
                                .dsTextStyle(.panelHeader)
                            Text("Hey everyone - The Bus is running 30 minutes late. We’ll leave at 10:00 AM.")
                                .dsTextStyle(.panelDetail)
                                .multilineTextAlignment(.leading)
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
                
                HStack {
                    HStack(alignment: .top){
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 32, weight: .medium))
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text("Flight Added")
                                .dsTextStyle(.panelHeader)
                            Text("Flight AA542, LGA to LAX, has been added to your itinerary.")
                                .dsTextStyle(.panelDetail)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    .foregroundColor(.black)
                    Spacer()
                }
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity)
            }
            
            
        }
    }
}

#Preview {
    ThisTourView()
}
