//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by Shanindu Rajapaksha on 2024-12-26.
//
import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading){
                Text("Shanindu Rajapaksha")
                    .font(.subheadline)
                    .bold()
                
                Text("shanindu.r@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            }
            
        }
        .padding(.top, 50)
        .padding(.leading)
    }
}

#Preview {
    SideMenuHeaderView()
}
