//
//  ListNotes.swift
//  NotesWatchApp Watch App
//
//  Created by Edgar Cisneros on 10/05/23.
//

import SwiftUI

struct ListNotes: View {
    
    var notes : [Note] = [Note(title: "Make the dishes."), Note(title: "Go to the dentist."), Note(title: "Make zoom call with sprint team.")]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(0..<notes.count,id: \.self) { i in
                    NavigationLink(destination: DetailNote(note: notes[i])) {
                        Text(notes[i].title)
                            .lineLimit(1)
                    }
                }
                
            }
        }
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
