//
//  ContentView.swift
//  Edward Suwandi
//
//  Created by student on 18/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAirplaneModeOn: Bool = false
    
    let flags = [
        "🇱🇷", "🇧🇷", "🇨🇦", "🇩🇪", "🇪🇸", "🇫🇷", "🇮🇹", "🇯🇵", "🇲🇽", "🇷🇺",
        "🇺🇸", "🇦🇺", "🇮🇳", "🇨🇳", "🇿🇦", "🇬🇧", "🇰🇷", "🇳🇱", "🇸🇪", "🇳🇴",
        "🇳🇿", "🇧🇪", "🇨🇭", "🇦🇹", "🇵🇹", "🇩🇰"
    ]

    let countryNames = [
        "Malaysia", "Brazil", "Canada", "Germany", "Spain", "France", "Italy", "Japan", "Mexico", "Russia",
        "United States", "Australia", "India", "China", "South Africa", "United Kingdom", "South Korea",
        "Netherlands", "Sweden", "Norway", "New Zealand", "Belgium", "Switzerland", "Austria", "Portugal", "Denmark"
    ]
    
    @State private var currentFlag = ""
    @State private var buttonText = "Go"
    
    var body: some View {
        Text(currentFlag)
        .font(.system(size: 300))
        .padding()
        Button(action: {
            let randomindex = Int.random(in: 0..<flags.count)
            
            currentFlag = flags[randomindex]
            buttonText = "Go to \(countryNames[randomindex])"
        }){
            Text(buttonText)
        }

    }
}



#Preview {
    ContentView()
}

