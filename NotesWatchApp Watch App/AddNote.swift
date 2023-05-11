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
    
    @Environment(\.dismiss) var presentation
    
    var body: some View {
        VStack{
            TextField("New Note", text: $text)
                .cornerRadius(20)
            Button("Add") {
                guard text.isEmpty == false else{
                    return
                }
                
                let note = Note(title: text)
                notes.append(note)
                Tools.shared.save(array: notes)
                text = ""
                presentation()
            }.background(.indigo)
                .cornerRadius(24)
        }.onAppear {
            notes = Tools.shared.load()
        }
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
