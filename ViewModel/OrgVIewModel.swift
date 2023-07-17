//
//  OrgVIewModel.swift
//  ZotConnect
//
//  Created by Colin O'Hare on 7/17/23.
//

import Foundation
import Firebase

class OrgViewModel: ObservableObject {
    @Published var orgList = [Org]()
    
    func getOrgs() {
        
        let db = Firestore.firestore()
        db.collection("orgs").getDocuments { snapshot, err in
            if err == nil {
                // no error
                if let snapshot = snapshot {
                    DispatchQueue.main.async {
                        self.orgList = snapshot.documents.map { org in
                            return Org(id: org.documentID,
                                       name: org["name"] as? String ?? "",
                                       type: org["type"] as? String ?? "",
                                       desc: org["desc"] as? String ?? "",
                                       location: org["location"] as? String ?? "",
                                       memberNum: org["num"] as? Int ?? 0,
                                       link: org["link"] as? String ?? ""
                            )
                        }
                    }
                }
            }
            else {
                //handle error
            }
        }
        
    }
    
}
