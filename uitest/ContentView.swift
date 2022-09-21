//
//  ContentView.swift
//  uitest
//
//  Created by Kristián Šimko on 14/09/2022.
//

import SwiftUI

struct regButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color.white : Color.gray)
            .foregroundColor(.black)
            .clipShape(Capsule()).scaleEffect(configuration.isPressed ? 1.3 : 1.0)
    }
}

struct ContentView: View {
@State private var name: String = ""
@State private var surname: String = ""
    @State private var scale = 0.5
    var body: some View {
        
        HStack {
        
        VStack {
            
                Spacer()
                
                HStack {
                    Spacer()
                    Image("Logologo")
                        .transition(/*@START_MENU_TOKEN@*/.slide/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Workify")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.trailing)
                        .transition(/*@START_MENU_TOKEN@*/.slide/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                
                Spacer()
            
            Form {
                TextField(text: $name, prompt: Text("Vaše meno")) {
                    Text("Name")
                }
                TextField(text: $surname, prompt: Text("Vaše priezvisko")) {
                    Text("Surname")
                }
            }
                
                Spacer()
                
                Button("Registrovať sa") {
                        print("Úspešne registrovaní!")
                        }
                        .buttonStyle(regButton())
                        
                
            }
            .bold()
            
            
            
        }.background(Color(hue: 0.392, saturation: 0.895, brightness: 0.659))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
