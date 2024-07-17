//
//  NotesView.swift
//  Rainier
//
//  Created by Michael Nyland on 6/6/24.
//

import SwiftUI

struct NotesPanelView: View {
    
    @Environment(Tour.self) var tour
    
    var body: some View {
        VStack{
            LazyVStack(alignment: .leading){
                Text("Notes")
                    .dsTextStyle(.sectionTitle)
                    .padding(.bottom, 4)
                VStack(alignment: .leading, spacing: 8){
                    ForEach(tour.dates[0].notes){ note in
                        VStack(alignment: .leading, spacing: 0){
                            VStack(alignment: .leading, spacing: 3){
                                Text("\(note.title)")
                                    .dsTextStyle(.panelHeader)
                                Text("\(note.note)")
                                    .dsTextStyle(.panelDetail)
                            }
                        }
                        
                    }
                }
            }
            .padding(16)
        }
        .background(.white)
    }
}

//#Preview {
//    NotesView()
//}
