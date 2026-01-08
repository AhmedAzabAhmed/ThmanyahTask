//
//  API.swift
//  ThmanyahTask
//
//  Created by Ahmed Azzab Sanad on 08/01/2026.
//

import Foundation

enum API {
    case getHomeScreenSections(pageNumber: Int = 1)
    // I used home sections API bacause the Search API is returning mock data, to show the UI, Also doesn't contain section types to present implemented Section
    case performSearch(query: String)

    private var baseURL: URL {
        URL(string: "https://api-v2-b2sit6oh3a-uc.a.run.app/")!
    }
    
    var path: URL {
        switch self {
        case .getHomeScreenSections(let pageNumber):
            let queryItems: [URLQueryItem] = [
                URLQueryItem(name: "page", value: "\(pageNumber)")
            ]
            return baseURL.appendingPathComponent("home_sections").appending(queryItems: queryItems)
        case .performSearch(query: let query):
            let queryItems: [URLQueryItem] = [
                URLQueryItem(name: "search", value: query)
            ]
            return baseURL.appendingPathComponent("home_sections").appending(queryItems: queryItems)
        }
    }
    
    var method: HTTPMethod {
        switch self {
        default:
            return .get
        }
    }
    
}
