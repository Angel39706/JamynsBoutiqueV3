//
//  ProductListViewModel.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 10/4/22.
//

import Foundation

final class ProductViewModel: ObservableObject {
    //Starts with empty array, will be filled in by network call
    @Published var products: [Product] = []
    
    func getProduct() {
        NetworkManager.shared.getProducts{ result in
            DispatchQueue.main.async { //Dispatch Queue updates in the main thread
                 switch result { //When data is received then goes through case statements
                case .success(let products):
                    self.products = products
                case . failure(let error):
                    print(error.localizedDescription)
                 }
           
            }
            
        }
    }
}
