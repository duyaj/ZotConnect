//
//  OrgPostService.swift
//  ZotConnect
//
//  Created by Colin O'Hare on 7/20/23.
//

import Foundation
import Firebase


struct OrgPostService {
    
    func retrievePost(org: Org, completion : @escaping([Post]) -> Void) {
        let OrgAnnouncements = Firestore.firestore().collection("orgs/\(Org.id)/Announcement").getDocuments()
        
     
    }
}
