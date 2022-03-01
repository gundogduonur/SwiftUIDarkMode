//
//  ContentView.swift
//  Darkmode
//
//  Created by Onur Gündoğdu on 1.03.2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:20){
                    Text("Primary Text")
                        .foregroundColor(.primary)
                    Text("Secondary Text")
                        .foregroundColor(.secondary)
                    Text("This text adaptive color")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This text locally color")
                        .foregroundColor(colorScheme == .light ? .gray : .blue)
                }
            }
            .navigationTitle("Dark Mode")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().preferredColorScheme(.dark)
            ContentView().preferredColorScheme(.light)
        }
        
    }
}
