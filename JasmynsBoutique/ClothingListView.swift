//
//  ClothingListVIew.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 9/29/22.
//

import SwiftUI

struct ClothingListView: View {
    @StateObject var viewModel = ProductViewModel()
    
    var column = [GridItem(.fixed(200)), GridItem(.fixed(200))]
    var body: some View {
        NavigationView{
                ScrollView{
                        LazyVGrid(columns: column) {
                            ForEach(viewModel.products) {Product in
                                ProductCell(Product: Product)
                            }
                            .padding()
                        }
            }
                .navigationTitle("💐 Jasmyn's Boutique")
            }
            
            .onAppear{ //When under Clothing list view, it then runs the network manager
                
                //Access it from viewmodel
                viewModel.getProduct()
            }
        }
    }
    
    struct ClothingListVIew_Previews: PreviewProvider {
        static var previews: some View {
            ClothingListView()
        }
    }

