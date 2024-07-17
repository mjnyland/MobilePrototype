//
//  TextStyles.swift
//  Rainier
//
//  Created by Michael Nyland on 6/5/24.
//

import Foundation
import SwiftUI

@Observable
class TextStyleSettings {
    var headerSize: CGFloat = 17.0
    var headerWeight: Font.Weight = .medium
    var detailSize: CGFloat = 15.0
    var detailWeight: Font.Weight = .regular
    var sectionTitleSize: CGFloat = 15.0
    var sectionTitleWeight: Font.Weight = .regular
}

struct TextStyleModifier: ViewModifier {
    enum TextStyle {
        case sectionTitle
        case pageHeading
        case pageHeadingTwo
        case pageDetail
        case panelHeader
        case panelBody
        case panelDetailEmphasized
        case panelDetail
        case panelSubheader
        case navBody
        case navBodyEmphasized
        case tabBody
    }
    
    var style: TextStyle
    
    @Environment(TextStyleSettings.self) private var settings: TextStyleSettings
    
    func body(content: Content) -> some View {
        switch style {
        case .sectionTitle:
            content.font(.system(size: settings.sectionTitleSize, weight: settings.sectionTitleWeight))
        case .pageHeading:
            content.font(.system(size: 32, weight: .bold)).foregroundColor(.white)
        case .pageHeadingTwo:
            content.font(.system(size: 24, weight: .bold)).kerning(-0.25)
        case .pageDetail:
            content.font(.system(size: 13, weight: .semibold)).foregroundColor(.white)
        case .panelHeader:
            content.font(.system(size: settings.headerSize, weight: settings.headerWeight))
        case .panelBody:
            content.font(.system(size: 15, weight: .medium))
        case .panelDetailEmphasized:
            content.font(.system(size: 15, weight: .medium)).foregroundColor(Color(red: 0.48, green: 0.53, blue: 0.58))
        case .panelDetail:
            content.font(.system(size: settings.detailSize, weight: settings.detailWeight)).foregroundColor(Color(red: 0.48, green: 0.53, blue: 0.58))
        case .panelSubheader:
            content.font(.system(size: 12, weight: .medium)).foregroundColor(Color(red: 0.48, green: 0.53, blue: 0.58))
        case .navBody:
            content.font(.system(size: 12, weight: .medium))
        case .navBodyEmphasized:
            content.font(.system(size: 15, weight: .semibold))
        case .tabBody:
            content.font(.system(size: 15, weight: .medium))
        }
    }
}

extension View {
    func dsTextStyle(_ style: TextStyleModifier.TextStyle) -> some View {
        self.modifier(TextStyleModifier(style: style))
    }
}
