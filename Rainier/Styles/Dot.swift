//
//  Dot.swift
//  Rainier
//
//  Created by Michael Nyland on 6/7/24.
//

import SwiftUI

struct Dot: View {
    var body: some View {
        Circle()
            .fill(Color.blue)
            .frame(width: 3, height: 3)
    }
}

#Preview {
    Dot()
}
