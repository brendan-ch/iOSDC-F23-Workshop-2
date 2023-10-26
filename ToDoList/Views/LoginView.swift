//
//  LoginView.swift
//  ToDoList
//
//  Created by Lucas Gaudet on 10/25/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedin = false
       
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                   
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                   
                Button(action: {
                    // Perform authentication logic here
                    // For simplicity, we're just toggling a boolean
                    isLoggedin.toggle()
                }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .padding()
                NavigationLink(
                    destination: Text("Signup page"), // Replace with your signup view
                       label: {
                           Text("Don't have an account? Signup")
                               .foregroundColor(.blue)
                       }
                   )
               }
               .padding()
               .navigationTitle("Login")
               .alert(isPresented: $isLoggedin) {
                   Alert(title: Text("Logged In"), message: Text("Welcome, \(username)!"), dismissButton: .default(Text("OK")))
               }
           }
       }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
