//
//  CircleView.swift
//  trafficLights
//
//  Created by Николай Христолюбов on 19.10.2022.
//

import SwiftUI

struct CircleView: View {
    
    @State var colorOfCircle: Color
    //@State var opacityValue: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150, alignment: .center)
            .foregroundColor(colorOfCircle)
            //.opacity(opacityValue)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(colorOfCircle: .red)
    }
}
