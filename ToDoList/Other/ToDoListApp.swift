//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Brendan on 2023.10.10.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
