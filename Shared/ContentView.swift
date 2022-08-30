//
//  ContentView.swift
//  Shared
//
//  Created by Temiloluwa on 27/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var choice = 0
    @State private var showText: Bool = false
    @State private var transitModes = ["Bikes", "Cars", "Bus"]
    @State private var slideVal: Float = 0
    @State private var stepVal = 0
    @State private var gameTime = Date()
    var body: some View {
        
        Form {
            
            Section {
                
                Picker(selection: $choice, label: Text("Transit Mode")) {
                    
                    ForEach(0..<transitModes.count) { index in
                        Text("\(self.transitModes[index])")
                    }
                    
                }.pickerStyle(SegmentedPickerStyle())
                
                Text("Current Choice: \(transitModes[choice])")
            }
            
            Section {
                
                Toggle(isOn: $showText) {
                    
                    Text("Show Text")
                }
                
                if showText {
                    
                    Text("The Text toggle is on")
                }
            }
            
            Section {
                
                Slider(value: $slideVal, in: 0...10, step: 0.001)
                    
                    Text("Current Slider Value: \(slideVal, specifier: "%.1f")")
                    
                
                
            }
            
            Section {
                
                
                Stepper("Stepper", value: $stepVal, in: 0...5)
                
                Text("Stepper current Value: \(stepVal)")
                    
                
            }
            Section {
                
                DatePicker("Please select a date", selection: $gameTime)
            }
            
            Section {
                
                DatePicker("Please select a date", selection: $gameTime, in: Date()...)
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
