//
//  BaseModel.swift
//  ThmanyahTask
//
//  Created by Ahmed Azzab Sanad on 08/01/2026.
//

import Foundation

struct BaseResponse: Decodable {
    let sections : [ModelSection]?
    let pagination : Pagination?
    
}

struct Pagination : Codable {
    let nextPage : String?
    let totalPages : Int?
}
