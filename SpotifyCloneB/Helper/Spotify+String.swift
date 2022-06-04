//
//  Spotify+String.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class HelperString {
    
    static let imageProfileLink = "https://i.scdn.co/image/ab6775700000ee856829185f4c47cb93e12b0cce"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
    static func setFormatNumber(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        guard let formattedNumber = numberFormatter.string(from: NSNumber(value: number)) else { return "" }
        
        return formattedNumber
    }
    
}
