//
//  GroupProfileViewModel.swift
//  ZotConnect
//
//  Created by Colin O'Hare on 7/20/23.
//

import Foundation

class GroupProfileViewModel: ObservableObject {
    @Published var orgAnnouncements = [Post]()
    let profileService = orgPostService()
    
    init(org: Org) {
        fetchAnnouncements(org: org)
    }
    
    func fetchAnnouncements(org : Org) {
        profileService.fetchOrgPosts(org: org) { announcements in
            self.orgAnnouncements = announcements
            print(self.orgAnnouncements.count)
        }
    }
}
