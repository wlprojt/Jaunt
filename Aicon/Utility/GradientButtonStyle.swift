//
//  GradientButtonStyle.swift
//  Aicon
//
//  Created by Ricky Vishwas on 01/08/25.
//

import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nill Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When User pressed the Button
                LinearGradient(
                    colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom
                ):
                // B: When the Button is not pressed
                LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
