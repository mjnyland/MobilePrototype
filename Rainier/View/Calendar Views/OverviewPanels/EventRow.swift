//
//  EventRow.swift
//  Rainier
//
//  Created by Michael Nyland on 6/6/24.
//

import SwiftUI

struct EventRow: View {
    
    
    @Environment(TextStyleSettings.self) private var settings: TextStyleSettings
    var event: SchedEvent
    
    var isSoon: Bool
    
    var body: some View {
        HStack{
            HStack(alignment: .top){
                Image(systemName: event.icon)
                    .dsTextStyle(.panelHeader)
                
                VStack(alignment: .leading, spacing: 8){
                    Text("\(event.time)")
                        .dsTextStyle(.panelDetail)
                        .padding(.bottom, 4)
                    Text("\(event.title)")
                        .dsTextStyle(.panelHeader)
                }
            }
            
            Spacer()
            
            
            if isSoon {
                Text("in 10m")
                    .padding(6)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(4.0)
                    .font(.system(size: 12, weight: .medium))
            }
            
            
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
    }
}
//
//#Preview {
//    EventRow()
//}
