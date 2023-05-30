//
//  API_Helper.swift
//  Assignment-1-API
//
//  Created by Anish Acharya on 2023-05-23.
//

import Foundation

class SpaceflightNewsAPIHelper {
    private static let urlString = "https://api.spaceflightnewsapi.net/v4/articles/"
    
    public static func fetch() async -> Any {
        let SpaceflightNewsUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: SpaceflightNewsUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
