//
//  CircleView.swift
//  trafficLights
//
//  Created by Николай Христолюбов on 19.10.2022.
//

import SwiftUI

struct CircleView: View {
    
    let colorOfCircle: Color
    let opacityValue: Double
    
    var body: some View {
        Circle()
            .frame(width: 130, height: 130, alignment: .center)
            .foregroundColor(colorOfCircle)
            .opacity(opacityValue)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(colorOfCircle: .red, opacityValue: 0.3)
    }
}
