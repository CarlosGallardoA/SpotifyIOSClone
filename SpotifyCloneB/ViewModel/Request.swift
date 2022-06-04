//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token = "BQDgyeleqgFxbYOjQAhdCLhyVGPfi0l6vWaCi8XSWr6fsY_9wjjqwbNT04A60HHBpPTN0zmsOOQnppbote-piGFc3tzl98GGmEKxaEgU_nMMILaXL24cjcfOXm8v5jen59KiNLRxaeVWPbs5M3TQqv0fExcxG7H4_DSV"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            let urlParse = url.replacingOccurrences(of: " ", with: "%20")
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(urlParse)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
