//
//  Inshorts_Helper.swift
//  Assignment-1-API
//
//  Created by Anish Acharya on 2023-05-23.
//

import Foundation

class Inshorts_Helper {
    private static let urlString = "https://inshorts.deta.dev/news?category=science/"
    
    public static func fetch() async -> Any {
        let InshortsUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: InshortsUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
