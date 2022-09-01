//
//  RectangleCard.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 8/29/22.
//

import SwiftUI

// This is the rectangle card that's used for the button backgrounds in the DashboardView()

struct RectangleCard: View {
    
    var color:Color
    var width:CGFloat
    var height:CGFloat
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .foregroundColor(color)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
