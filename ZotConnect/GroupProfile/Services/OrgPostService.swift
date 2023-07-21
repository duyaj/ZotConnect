//
//  OrgPostService.swift
//  ZotConnect
//
//  Created by Colin O'Hare on 7/20/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct orgPostService {
    
    func fetchOrgPosts(org: Org, completion: @escaping ([Post]) -> Void) {
        let db = Firestore.firestore()
        db.collection("/orgs/\(org.id)/Announcement").getDocuments { snapshot, err in
            guard let docs = snapshot?.documents else {return}
            let announcements = docs.compactMap({try? $0.data(as: Post.self)})
            completion(announcements)
        }
        
    }
}

