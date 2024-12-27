//
//  SideMenuOptionModel.swift
//  SideMenu
//
//  Created by Shanindu Rajapaksha on 2024-12-25.
//
import Foundation

enum SideMenuOptionModel: Int, CaseIterable {
    case dashboard
    case perfomance
    case profile
    case notifications
    
    var title: String {
        switch self {
        case .dashboard: return "Dashboard"
        case .perfomance: return "Performance"
        case .profile: return "Profile"
        case .notifications: return "Notifications"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .dashboard: return "filemenu.and.cursorarrow"
        case .perfomance: return "chart.bar"
        case .profile: return "person"
        case .notifications: return "bell"
        }
    }
    
    var section: String {
        switch self {
        case .dashboard: return "analytics"
        case .perfomance: return "analytics"
        case .profile: return "profile"
        case .notifications: return "profile"
        }
    }
}

extension SideMenuOptionModel: Identifiable {
    var id: Int { return self.rawValue }
}

