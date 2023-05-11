//
//  ListNotes.swift
//  NotesWatchApp Watch App
//
//  Created by Edgar Cisneros on 10/05/23.
//

import SwiftUI

struct ListNotes: View {
    
    @State var notes = [Note]()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(0..<notes.count,id: \.self) { i in
                    NavigationLink(destination: DetailNote(note: notes[i])) {
                        Text(notes[i].title)
                            .lineLimit(1)
                    }
                }.onDelete(perform: delete)
            }
        }.onAppear {
            notes = Tools.shared.load()
        }
    }
    
    private func delete(offsets: IndexSet){
        withAnimation{
            notes.remove(atOffsets: offsets)
        }
    }
    
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
