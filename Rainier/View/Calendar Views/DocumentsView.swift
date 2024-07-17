//
//  DocuementsView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/29/24.
//

import SwiftUI

struct DocumentsView: View {
    @Environment(Tour.self) var tour
    var body: some View {
        
        ScrollView{
            Divider()
                .padding(.horizontal, 16)
            
            VStack(alignment: .leading){
                
                
                
                VStack{
                    ForEach(tour.dates[0].documents){ doc in
                        
                        
                        VStack(alignment: .leading){
                            
                            //Document Container
                            HStack{
                                
                                //File Names
                                VStack(alignment: .leading){
                                    Text("\(doc.fileName)")
                                        .dsTextStyle(.panelHeader)
                                        .padding(.bottom, 2)
                                    Text("\(doc.uploadDate)")
                                        .dsTextStyle(.panelDetail)
                                }
                                
                                Spacer()
                                
                                //Phone Icon
                                HStack{
                                    VStack(){
                                        Image(systemName: "arrow.down.square")
                                            .font(.system(size: 12, weight: .medium))
                                    }
                                    .padding(8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .inset(by: 0.5)
                                            .stroke(Color(red: 0.94, green: 0.95, blue: 0.97))
                                    )
                                }
                                
                                
                            }
                            
                            Divider()
                                .padding(.vertical, 16)
                            
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

//#Preview {
//    DocumentsView()
//}

