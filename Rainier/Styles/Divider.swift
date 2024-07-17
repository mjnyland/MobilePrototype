//
//  Divider().swift
//  Rainier
//
//  Created by Michael Nyland on 6/5/24.
//

import SwiftUI

struct Divider: View {
    var color: Color = Color(red: 0.94, green: 0.95, blue: 0.97)
    var height: CGFloat = 1
    var cornerRadius: CGFloat = 8
    var opacity: Double = 0.75
    var horizontalPadding: CGFloat = 16
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: height)
            .cornerRadius(cornerRadius)
            .opacity(opacity)
    }
}

//#Preview {
//    Divider__()
//}
