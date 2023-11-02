//
//  Gradients.swift
//  SwiftLessons
//
//  Created by Паша on 2.11.23.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
        let gradient = RadialGradient(gradient: colors, center: .center, startRadius: 50, endRadius: 200)
        let gradient1 = AngularGradient(gradient: colors, center: .center)

        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .leading, endPoint: .trailing))
            Circle()
                .fill(gradient)
                .frame(width: 200, height: 200)
            Circle()
                .strokeBorder(gradient1, lineWidth: 30)
                .frame(width: 200, height: 200)

        }
    }
}

#Preview {
    Gradients()
}
