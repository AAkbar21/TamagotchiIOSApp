//
//  ContentView.swift
//  TamagotchiIOSApp
//
//  Created by Akbar, Abdullah (RCH) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var tamagotchi = Tamagotchi(name: "Bob")
    var body: some View {
        Form {
        VStack(alignment: .leading, spacing: 10) {
            Text("""
                 \(tamagotchi.displayTamagotchiStats())
                """
                 )
                .padding()
        }
        Section {
            Button
        }
        }
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
