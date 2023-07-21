//
//  Post.swift
//  ZotConnect
//
//  Created by Colin O'Hare on 7/20/23.
//

import Foundation
import FirebaseFirestoreSwift
import Firebase

struct Post: Identifiable, Decodable{
    @DocumentID var id: String?
    let title: String
    let text: String
    let timestamp: Timestamp
    let images: [String]
    
    
}
