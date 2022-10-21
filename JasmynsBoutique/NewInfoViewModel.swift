//
//  NewInfoViewModel.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 10/14/22.
//

import Foundation

final class NewInfoViewModel: ObservableObject {
    //Starts with empty array, will be filled in by network call
    @Published var firesales: [FireSale] = []
    
    func getInfo() {
        NewinfoManager.shared.getProductsTwo{ result in
            DispatchQueue.main.async { //Dispatch Queue updates in the main thread
                 switch result { //When data is received then goes through case statements
                case .success(let Firesales):
                    self.firesales = Firesales
                case . failure(let error):
                    print(error.localizedDescription)
                 }
           
            }
            
        }
    }
}
