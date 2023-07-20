//
//  PostFilterViewModel.swift
//  ZotConnect
//
//  Created by Colin O'Hare on 7/20/23.
//

import Foundation

enum PostFilterViewModel: Int, CaseIterable{
    case announcements
    case community
    
    var title: String {
        switch self {
        case .announcements: return "Announcements"
        case .community: return "Community"
        }
    }
}
