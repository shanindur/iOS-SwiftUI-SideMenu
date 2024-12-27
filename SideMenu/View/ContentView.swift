//
//  ContentView.swift
//  SideMenu
//
//  Created by Shanindu Rajapaksha on 2024-12-25.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack{
            ZStack {
                
                TabView(selection: $selectedTab){
                    
                    Text("Dashboard")
                        .tag(0)
                    
                    Text("Perfomance")
                        .tag(1)
                    
                    Text("Profile")
                        .tag(2)
                    
                    Text("Notifications")
                        .tag(3)
                    
                    
                }
                
                // Side Menu
                SideMenuView(showMenu: $showMenu, selectedTab: $selectedTab)
                
            }
            
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationBarTitle("Home", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    )
                }
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
