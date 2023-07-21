//
//  Post.swift
//  ZotConnect
//
//  Created by Colin O'Hare on 7/20/23.
//

import Foundation

struct Post: Identifiable, Decodable{
    let id: String
    let title: String
    let text: String
    let images: [String]?
    let time: String
    
}
