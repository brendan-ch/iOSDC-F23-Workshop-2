//
//  ContentView.swift
//  ToDoList
//
//  Created by Lucas Gaudet on 10/11/23.
//

import SwiftUI

struct MainView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
