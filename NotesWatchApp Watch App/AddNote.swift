//
//  AddNote.swift
//  NotesWatchApp Watch App
//
//  Created by Edgar Cisneros on 10/05/23.
//

import SwiftUI

struct AddNote: View {
    
    @State private var text = ""
    @State private var notes = [Note]()
    
    var body: some View {
        VStack{
            TextField("New Note", text: $text)
                .cornerRadius(20)
            Button("Add new note") {
                guard text.isEmpty == false else{
                    return
                }
                
                let note = Note(title: text)
                notes.append(note)
                text = ""
            }.background(.indigo)
                .cornerRadius(24)
        }
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
