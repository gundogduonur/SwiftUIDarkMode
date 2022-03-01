//
//  ContentView.swift
//  Darkmode
//
//  Created by Onur Gündoğdu on 1.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:20){
                    Text("Primary Text")
                        .foregroundColor(.primary)
                    Text("Secondary Text")
                        .foregroundColor(.secondary)
                    Text("Black Text")
                        .foregroundColor(.black)
                    Text("White Text")
                        .foregroundColor(.white)
                    Text("Blue Text")
                        .foregroundColor(.blue)
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
