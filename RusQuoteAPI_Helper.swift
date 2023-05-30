//
//  RusQuoteAPI_Helper.swift
//  Assignment-1-API
//
//  Created by Anish Acharya on 2023-05-23.
//

import Foundation

class RusQuoteAPI_Helper {
    private static let urlString = "https://api.forismatic.com/api/jsonp/"
    
    public static func fetch() async -> Any {
        let rusquoteUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: rusquoteUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
