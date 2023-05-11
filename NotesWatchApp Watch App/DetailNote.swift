//
//  DetailNote.swift
//  NotesWatchApp Watch App
//
//  Created by Edgar Cisneros on 10/05/23.
//

import SwiftUI

struct DetailNote: View {
    
    let note: Note
    
    var body: some View {
        VStack{
            Text(note.title)
                .font(.system(size: 24))
            Spacer()
            Text(note.creationDate)
                .foregroundColor(.gray)
                .font(.system(size: 15.5))
        }
    }
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        DetailNote(note: Note(title: "New note"))
    }
}
