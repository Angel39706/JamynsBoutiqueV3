//
//  NewInfo.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 10/13/22.
//

//
import Foundation
//Decodes JSON file to receive all information
struct FireSale : Decodable, Identifiable{
    let imageURL : String
    let id : Int
    let name : String
    let DiscountedPrice : Double
}
//Response object to help the Decodable work correctly
struct InfoResponse: Decodable{
    let requestInfo : [FireSale]
}
//Tester
struct MockDataTwo{
    static let sampleInfo = FireSale(imageURL: "",
                                       id: 0001,
                                       name: "Tester",
                                     DiscountedPrice: 9.90
                                       )
    
    static let Firesales = [sampleInfo,sampleInfo,sampleInfo,sampleInfo]
}
