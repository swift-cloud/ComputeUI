//
//  URL+Path.swift
//  
//
//  Created by Andrew Barba on 11/28/22.
//

import Foundation

extension URL {

    public static func path(_ location: String) -> URL {
        return .init(string: location.starts(with: "/") ? location : "/\(location)")!
    }
}
