//
//  ContentView.swift
//  trafficLights
//
//  Created by Николай Христолюбов on 19.10.2022.
//

import SwiftUI

enum ColorsOfCircle {
    case red; case yellow; case green
}

struct ContentView: View {
    @State var buttonText = "Start"

    @State var redLightOpacity: Double = 0.2
    @State var yellowLightOpacity: Double = 0.2
    @State var greenLightOpacity: Double = 0.2
    
    @State var currentLight = ColorsOfCircle.red
    
    var body: some View {
        VStack {
            VStack {
                CircleView(colorOfCircle: .red, opacityValue: redLightOpacity)
                    .padding()
                CircleView(colorOfCircle: .yellow, opacityValue: yellowLightOpacity)
                    .padding()
                CircleView(colorOfCircle: .green, opacityValue: greenLightOpacity)
                    .padding()
            }
            .padding()
            .border(.black, width: 10)
            Button(
                action: {
                    if buttonText == "Start" {
                        buttonText = "Next"
                    }
                    switchCurrentLight()
                },
                label: {
                    Text(buttonText)
                        .font(.title)
                        .foregroundColor(.black)
                        .bold()
                        .padding()
                }
            )
            .frame(width: 250, height: 70)
            .cornerRadius(10)
            .padding()
        }
        .padding(50)
    }
    
    private func switchCurrentLight() {
        let lightIsOn: Double = 1
        let lightIsOff: Double = 0.2
        
        switch currentLight {
        case .red:
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
            currentLight = ColorsOfCircle.yellow
        case .yellow:
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
            currentLight = ColorsOfCircle.green
        case .green:
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOn
            currentLight = ColorsOfCircle.red
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
