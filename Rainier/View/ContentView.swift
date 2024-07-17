//
//  ContentView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAddPresented = false
    @State var isRoutingPresented = false
    
    @State private var sheetHeight: CGFloat = UIScreen.main.bounds.height * 0.3 // Initial height
    @State private var offsetY: CGFloat = 50
    
    let minHeight: CGFloat = 200
    let midHeight: CGFloat = 400
    let maxHeight: CGFloat = UIScreen.main.bounds.height * 0.9
    
    @State var selectedTab: Tabs = .calendar
    
    @State private var tour = createSampleTour()
    
    
    
    var body: some View {
        VStack(spacing: 0){
            
            NavigationView{
                
                ZStack(alignment: .bottom){
                    VStack{
                        
                        switch selectedTab {
                        case .calendar:
                            
                            CalendarView(isAddPresented: $isAddPresented) //pass in selected state variable
                                .onAppear {
                                    isRoutingPresented = false
                                }
                            
                            
                        case .personnel:
                            PersonnelView()
                                .onAppear {
                                    isRoutingPresented = false
                                }
                        case .activity:
                            ActivityView()
                                .onAppear {
                                    isRoutingPresented = false
                                }
                        case .profile:
                            ProfileView()
                                .onAppear {
                                    isRoutingPresented = false
                                }
                        case .routing:
                            RoutingView()
                        }
                    }
                    
                    if isRoutingPresented {
                        
                        //Map is presented
                        //Why is this here
                        //BC vstack
                        
                        VStack {
                            
                            Spacer()
                            
                            VStack {
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 40, height: 3)
                                    .cornerRadius(8.0)
                                    .opacity(0.15)
                                    .padding(.vertical, 16)
                                RoutingListView()
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: sheetHeight)
                            .background(Color.white)
                            .cornerRadius(16)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        let newHeight = sheetHeight - value.translation.height
                                        if newHeight >= minHeight && newHeight <= maxHeight {
                                            sheetHeight = newHeight
                                        }
                                    }
                                    .onEnded { value in
                                        withAnimation {
                                            if sheetHeight < (minHeight + midHeight) / 2 {
                                                sheetHeight = minHeight
                                            } else if sheetHeight < (midHeight + maxHeight) / 2 {
                                                sheetHeight = midHeight
                                            } else {
                                                sheetHeight = maxHeight
                                            }
                                        }
                                    }
                            )
                            .transition(.move(edge: .bottom))
                            .zIndex(2)
                        }
                    }
                    
                    NavBarView(selectedTab: $selectedTab, isRoutingPresented: $isRoutingPresented)
                        .zIndex(2)
                }
            }
            
            
            
        }
        
        
        .sheet(isPresented: $isAddPresented){
            BottomSheetView()
                .presentationDetents([.medium])
        }
        .environment(tour)
        
    }
}

//
//#Preview {
//    ContentView()
//}
