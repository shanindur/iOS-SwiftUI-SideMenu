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
                    
                    DashboardView()
                        .tag(0)
                    
                    PerformanceView()
                        .tag(1)
                    
                    ProfileView()
                        .tag(2)
                    
                    NotificationsView()
                        .tag(3)
                    
                    
                }
                
                // Side Menu
                SideMenuView(showMenu: $showMenu, selectedTab: $selectedTab)
                
            }
            
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationBarTitle("Side Menu", displayMode: .inline)
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
