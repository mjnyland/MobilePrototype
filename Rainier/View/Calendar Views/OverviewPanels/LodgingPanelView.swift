//
//  LodgingView.swift
//  Rainier
//
//  Created by Michael Nyland on 6/6/24.
//

import SwiftUI

struct LodgingPanelView: View {
    
    @Environment(Tour.self) var tour
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Lodging")
                .dsTextStyle(.sectionTitle)
                .padding(.bottom, 4)
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    
                    ForEach(tour.dates[0].hotels){ hotel in
                        
                        // Hotel
                        VStack(alignment: .leading){
                            VStack(alignment: .leading){
                                VStack(alignment: .leading, spacing: 3){
                                    Text(hotel.name)
                                        .dsTextStyle(.panelHeader)
                                    Text(hotel.address)
                                        .dsTextStyle(.panelDetail)
                                        //.underline(true, color: .gray)
                                }
                                
                                Text(hotel.distance)
                                    .dsTextStyle(.panelDetail)
                                    .padding(.vertical, 8)
                            }
                            
                            //Icon
                            HStack{
                                Spacer()
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
                            .frame(maxWidth: .infinity)
                        }
                        .padding(16)
                        .frame(minWidth: 320, alignment: .leading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .inset(by: 0.5)
                                .stroke(Color.gray)
                                .opacity(0.15)
                            
                        )
                    }
                }
            }
            .scrollClipDisabled()
        }
        .padding(16)
        .padding(.bottom, 12)
        .background(.white)
    }
}

//#Preview {
//    LodgingView()
//}
