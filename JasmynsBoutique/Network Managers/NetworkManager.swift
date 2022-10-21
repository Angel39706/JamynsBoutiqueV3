//
//  NetworkManager.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 9/30/22.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
   //URL link used to see JSON file
//    static let baseURL = "https://raw.githubusercontent.com/Angel39706/Jasmyns_Boutique2.0/main/"
    static let baseURL = "https://raw.githubusercontent.com/Angel39706/JasmynsBoutique/main/"
    //Use product url if there is many end points in the url
    static let productURL = baseURL + "Jasmyn'sBoutique.json"
    
    private init() {}
    
    //Once getting products, it will check if info is received if not there will be an error
    func getProducts(completed: @escaping (Result<[Product], ProdError>) -> Void){
        //Checks if the url is valid
        guard let url = URL(string: NetworkManager.productURL) else {
            completed(.failure(.invalidURL))
            return
        }
        // Checks if url receives data and response
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                //Decodes array from JSON file
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(ProductResponse.self, from: data)
                completed(.success(decodedResponse.request))
            }
            catch{
                //Will return failure if JSON file does not match with products parameters.
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
