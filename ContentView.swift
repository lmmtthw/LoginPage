//
//  ContentView 2.swift
//  NameApp
//
//  Created by Matthew Lim on 13/8/25.
//


//
//  ContentView.swift
//  NameApp
//
//  Created by Matthew Lim on 10/8/25.
//

import SwiftUI

struct ContentView: View {
    
    //Model
    @State private var username: String = ""
    @State private var password: String = ""
    @State public var isLoggedIn: Bool = false
    @State public var Dashboard_username: String = "Matthew.lim"
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                //View
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack{
                    
                    Text("Sign In").font(.title)
                        .foregroundColor(.white)
                        .offset(x:-140,y:-10)
                        .padding(20)
                    
                    Text("Username").font(.subheadline)
                        .foregroundColor(.white)
                        .offset(x:-144,y:-1)
                    
                    TextField(("Username"), text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 350)
                        .offset(x:-10,y:0)
                        .padding(6)
                    
                    Text("Password").font(.subheadline)
                        .foregroundColor(.white)
                        .offset(x:-146,y:0)
                        .padding(.top,6)
                    
                    TextField(("Password"), text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 350)
                        .offset(x:-10,y:0)
                    
                    Button("Login"){
                        authentication()
                    }
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .offset(y:30)
                    
                    NavigationLink(destination: DashboardView(), isActive: $isLoggedIn) {
                        EmptyView()
                    }
                }
                
                
            }
        }
    }
    
    // View Model
    func authentication() {
        if username == "Matthew.lim" && password == "123456" {
            isLoggedIn = true
        }
    }
}

#Preview {
    ContentView()
}
