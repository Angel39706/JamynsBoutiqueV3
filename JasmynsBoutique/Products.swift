//
//  Products.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 9/30/22.
//

import Foundation
//Decodes JSON file to receive all information
struct Product : Decodable, Identifiable {
    let imageURL : String
    let price : Double
    let description : String
    let id : Int
    let name : String
    
}
//Response object to help the Decodable work correctly
struct ProductResponse: Decodable{
    let request : [Product]
}
//Tester
struct MockData{
    static let sampleProduct = Product(imageURL: "",
                                       price: 99.99,
                                       description: "Comfy",
                                       id: 0001,
                                       name: "Tester"
                                       )
    
    static let products = [sampleProduct,sampleProduct,sampleProduct,sampleProduct]
}
