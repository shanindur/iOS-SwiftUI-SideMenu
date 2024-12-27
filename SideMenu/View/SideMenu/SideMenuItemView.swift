//
//  SideMenuItemView.swift
//  SideMenu
//
//  Created by Shanindu Rajapaksha on 2024-12-25.
//
import SwiftUI

struct SideMenuItemView: View {
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    
    private var isSelected: Bool {
        return selectedOption == option
    }
    
    var body: some View {
        HStack {
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        .foregroundStyle(isSelected ? .blue : .primary)
        .padding(.leading)
        .frame(width: 216, height: 44)
        .background(isSelected ? .blue.opacity(0.25) : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SideMenuItemView(option: .dashboard, selectedOption: .constant(.dashboard))
}
