//
//  SettingsView.swift
//  Rainier
//
//  Created by Michael Nyland on 5/29/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(TextStyleSettings.self) private var settings: TextStyleSettings
    
    let weights: [Font.Weight] = [.light, .regular, .medium, .semibold, .bold]
    let weightNames: [String] = ["Light", "Regular", "Medium", "Semibold", "Bold"]
    
    var body: some View {
        @Bindable var settings = settings
        
        VStack{
            
            //Displayed text sizes
            VStack(alignment: .leading, spacing: 2){
                Text("Day Off")
                    .font(.system(size: settings.sectionTitleSize, weight: settings.sectionTitleWeight))
                    .padding(.bottom, 4)
                Text("Madison Square Garden")
                    .font(.system(size: settings.headerSize, weight: settings.headerWeight))
                Text("4 Pennsylvania Plaza, New York, NY 10001")
                    .font(.system(size: settings.detailSize, weight: settings.detailWeight))
            }
            .padding(16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .inset(by: 0.5)
                    .stroke(Color.gray)
                    .opacity(0.15)
                
            )
            
            
            VStack(spacing: 32){
                
                //Section Title adjust
                VStack(alignment: .leading){
                    
                    Text("Section Title : \(Int(settings.sectionTitleSize))")
                    Slider(
                        value: $settings.sectionTitleSize,
                        in: 0...30,
                        step: 1.0
                    )
                    
                    Picker("Font Weight", selection: $settings.sectionTitleWeight) {
                        Text("Light").tag(Font.Weight.light)
                        Text("Regular").tag(Font.Weight.regular)
                        Text("Medium").tag(Font.Weight.medium)
                        Text("Semibold").tag(Font.Weight.semibold)
                        Text("Bold").tag(Font.Weight.bold)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                //Header adjust
                VStack(alignment: .leading){
                    
                    Text("Panel header: \(Int(settings.headerSize))")
                    Slider(
                        value: $settings.headerSize,
                        in: 0...30,
                        step: 1.0
                    )
                    
                    Picker("Font Weight", selection: $settings.headerWeight) {
                        Text("Light").tag(Font.Weight.light)
                        Text("Regular").tag(Font.Weight.regular)
                        Text("Medium").tag(Font.Weight.medium)
                        Text("Semibold").tag(Font.Weight.semibold)
                        Text("Bold").tag(Font.Weight.bold)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                //Detail adjust
                VStack(alignment: .leading){
                    
                    Text("Panel detail: \(Int(settings.detailSize))")
                    Slider(
                        value: $settings.detailSize,
                        in: 0...30,
                        step: 1.0
                    )
                    
                    Picker("Font Weight", selection: $settings.detailWeight) {
                        Text("Light").tag(Font.Weight.light)
                        Text("Regular").tag(Font.Weight.regular)
                        Text("Medium").tag(Font.Weight.medium)
                        Text("Semibold").tag(Font.Weight.semibold)
                        Text("Bold").tag(Font.Weight.bold)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .padding(.top, 16)
            
            
            
            
            Spacer()
            
        }
        .padding(.top, 32)
    }
}

//
//#Preview {
//    SettingsView()
//}
