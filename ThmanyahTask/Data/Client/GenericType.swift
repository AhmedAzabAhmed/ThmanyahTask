//
//  GenericType.swift
//  ThmanyahTask
//
//  Created by Ahmed Azzab Sanad on 08/01/2026.
//

import Foundation

//MARK: Generic Resource
struct GenericResource<T: Decodable> {
    var url: URL
    var method: HTTPMethod
    var modelType: T.Type
}

