//
//  ProdError.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 10/4/22.
//

import Foundation
//Conforms to Error in network manager
enum ProdError: Error{
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
