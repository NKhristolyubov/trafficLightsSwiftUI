//
//  ContentView.swift
//  trafficLights
//
//  Created by Николай Христолюбов on 19.10.2022.
//

import SwiftUI

enum colorsOfCircle {
    case red; case yellow; case green
}

struct ContentView: View {
    @State var buttonText = "Start"
    @State var lightIsOn: Double = 1
    @State var lightIsOff: Double = 0.2
    
    @State var redLightOpacity: Double = 0.2
    @State var yellowLightOpacity: Double = 0.2
    @State var greenLightOpacity: Double = 0.2
    
    @State var currentLight = colorsOfCircle.red
    
    
    var body: some View {
            VStack {
                VStack {
                    CircleView(colorOfCircle: .red)
                        .opacity(redLightOpacity)
                        .padding()
                    CircleView(colorOfCircle: .yellow)
                        .opacity(yellowLightOpacity)
                        .padding()
                    CircleView(colorOfCircle: .green)
                        .opacity(greenLightOpacity)
                        .padding()
                }
                .padding()
                .border(.black, width: 10)
                Button(
                    action: {
                        if buttonText == "Start" {
                            buttonText = "Next"
                        }
                        switch currentLight {
                        case .red:
                            greenLightOpacity = lightIsOff
                            redLightOpacity = lightIsOn
                            currentLight = colorsOfCircle.yellow
                        case .yellow:
                            redLightOpacity = lightIsOff
                            yellowLightOpacity = lightIsOn
                            currentLight = colorsOfCircle.green
                        case .green:
                            yellowLightOpacity = lightIsOff
                            greenLightOpacity = lightIsOn
                            currentLight = colorsOfCircle.red
                        }
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
                .cornerRadius(50)
                .border(.black, width: 10)
                .padding()
                
            }
            .padding(50)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

