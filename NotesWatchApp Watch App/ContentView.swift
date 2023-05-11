//
//  ContentView.swift
//  NotesWatchApp Watch App
//
//  Created by Edgar Cisneros on 10/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var note = Note(title: "First Note")
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(note.title)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
