//
//  Tools.swift
//  NotesWatchApp Watch App
//
//  Created by Edgar Cisneros on 11/05/23.
//

import Foundation

class Tools{
    
    static let shared = Tools()  //Singleton
    
    private init() { }
    
    let key: String = "NotesApp"
    
    
    
    func save(array: [Note]){
        let data = array.map{ try? JSONEncoder().encode($0)}
        UserDefaults.standard.set(data, forKey: key)
    }
    
    func load() -> [Note]{
        guard let savedData = UserDefaults.standard.array(forKey: key) as? [Data] else {
            return []
        }
        return savedData.map{try! JSONDecoder().decode(Note.self, from: $0)}
    }
    
    
    
}
