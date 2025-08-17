//
//  DashboardView.swift
//  NameApp
//
//  Created by Matthew Lim on 13/8/25.
//

import SwiftUI

struct DashboardView: View {
    
    // Model
    @State private var DashboardView_Username: String = ""
    
    // View
    var body : some View {
        Text(ContentView().Dashboard_username + " has login successfully")
    }
    
    //View Model
    func Login_Success() {
        if ContentView().isLoggedIn == true {
            DashboardView_Username = ContentView().Dashboard_username
        }
    }
}

#Preview {
    DashboardView()
}
