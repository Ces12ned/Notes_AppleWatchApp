//
//  ContentView.swift
//  NotesWatchApp Watch App
//
//  Created by Edgar Cisneros on 10/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            VStack {
                NavigationLink("Add new note", destination: AddNote())
                    .background(.indigo)
                    .cornerRadius(20)
                NavigationLink("View notes", destination: ListNotes())
                    .background(Color(UIColor(red: 255/255, green: 150/255 , blue: 0 , alpha: 0.8)))
                    .cornerRadius(20)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
