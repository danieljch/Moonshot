//
//  RectangleView.swift
//  Moonshot
//
//  Created by Daniel Jesus Callisaya Hidalgo on 14/2/22.
//

import SwiftUI

struct RectangleDivider: View {
    let height: CGFloat
    let color: Color
    var body: some View {
        Rectangle()
            .frame(height: height)
            .foregroundColor(color)
            .padding(.vertical)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleDivider(height: 2, color: .darkBackground)
    }
}
