//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Shanindu Rajapaksha on 2024-12-25.
//
import SwiftUI

struct SideMenuView: View {
    @Binding var showMenu: Bool
    @State private var selectedOption: SideMenuOptionModel?
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            if showMenu {
                
                Rectangle()
                    .frame(width: .infinity)
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        showMenu.toggle()
                    }
                HStack{
                    VStack(alignment: .leading, spacing: 32) {
                        //Menu Header
                        SideMenuHeaderView()
                        
                        //Menu list
                        VStack(alignment: .leading) {
                            
                            Section(header: Text("ANALYTICS")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .padding(.leading))
                            {
                                ForEach(SideMenuOptionModel.allCases){ option in
                                    
                                    if (option.section == "analytics") {
                                        
                                        Button(action: {
                                            onOptionTapped(option)
                                        },label: {
                                            SideMenuItemView(option: option, selectedOption: $selectedOption)
                                        })
                                    }
                                }
                                
                            }
                            
                            Spacer().frame(height: 24) 
                            
                            Section(header: Text("PROFILE")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .padding(.leading))
                            {
                                ForEach(SideMenuOptionModel.allCases){ option in
                                    
                                    if (option.section == "profile") {
                                        
                                        Button(action: {
                                            onOptionTapped(option)
                                        },label: {
                                            SideMenuItemView(option: option, selectedOption: $selectedOption)
                                        })
                                    }
                                }
                                
                            }
                            
                        }
                        
                        Spacer()
                        
                        
                    }
                    .padding()
                    .frame(maxWidth: 270, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))
                .edgesIgnoringSafeArea(.all)
                
            }
            
        }
        
        .animation(.easeOut, value: showMenu)
    }
    
    private func onOptionTapped(_ option: SideMenuOptionModel){
        selectedOption = option
        selectedTab = option.rawValue
        showMenu = false
    }
}

#Preview {
    SideMenuView(showMenu: .constant(true), selectedTab: .constant(0))
}
