## 📱 NameApp

![Swift](https://img.shields.io/badge/Swift-5.9-orange?logo=swift)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Framework-blue?logo=swift)
![Xcode](https://img.shields.io/badge/Xcode-15-blue?logo=xcode)
![iOS](https://img.shields.io/badge/iOS-17-lightgrey?logo=apple)

A simple SwiftUI iOS app with a login screen and a dashboard view.
The app demonstrates the MVVM pattern (Model, View, ViewModel in one file), navigation with NavigationLink, and basic authentication.

**📂 Project Structure**
```
NameApp/
├── ContentView.swift        # Login screen
├── DashboardView.swift      # Dashboard after login
├── Assets.xcassets          # Images (e.g., Background)
└── NameAppApp.swift         # App entry point
```

**🚀 Features**
```
✅ Login screen with username and password fields
✅ Hardcoded login check (username = "Matthew.lim", password = "123456")
✅ Navigation to Dashboard after successful login
✅ Dashboard shows logged-in username
```

## 🛠️ Code Overview

**🔑 Login Screen (ContentView.swift)**
```
import SwiftUI
struct ContentView: View {
    
    // Model
    @State private var username: String = ""
    @State private var password: String = ""
    @State public var isLoggedIn: Bool = false
    @State public var Dashboard_username: String = "Matthew.lim"
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Text("Sign In")
                        .font(.title)
                        .foregroundColor(.white)
                        .offset(x:-140,y:-10)
                        .padding(20)
                    
                    // Username
                    Text("Username")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .offset(x:-144,y:-1)
                    
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 350)
                        .offset(x:-10,y:0)
                        .padding(6)
                    
                    // Password
                    Text("Password")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .offset(x:-146,y:0)
                        .padding(.top,6)
                    
                    TextField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 350)
                        .offset(x:-10,y:0)
                    
                    // Login button
                    Button("Login") {
                        authentication()
                    }
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .offset(y:30)
                    
                    // Navigate if login is successful
                    NavigationLink(destination: DashboardView(), isActive: $isLoggedIn) {
                        EmptyView()
                    }
                }
            }
        }
    }
    
    // ViewModel: Authentication
    func authentication() {
        if username == "Matthew.lim" && password == "123456" {
            isLoggedIn = true
        }
    }
}
```

**🖥️ Dashboard Screen (DashboardView.swift)**

```
import SwiftUI

struct DashboardView: View {
    
    // Model
    @State private var DashboardView_Username: String = ""
    
    var body: some View {
        Text(ContentView().Dashboard_username + " has login successfully")
    }
    
    // ViewModel
    func Login_Success() {
        if ContentView().isLoggedIn == true {
            DashboardView_Username = ContentView().Dashboard_username
        }
    }
}
```
**⚡ How to Run**
```
Open project in Xcode 15+
Ensure you have a Background image in Assets.xcassets
Build & run on Simulator or device (⌘R)
Login with:
Username: Matthew.lim
Password: 123456
📌 Future Improvements
🔒 Replace hardcoded authentication with a secure backend
🗝️ Use SecureField for password input
🌐 Fetch user data from API
🎨 Improve UI with modern design components
```
