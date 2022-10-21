//
//  FireSale.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 10/14/22.
//

import SwiftUI

struct FireSaleView: View {
    @StateObject var viewModeltwo = NewInfoViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModeltwo.firesales) { FireSale in
                FireCell(FireSale: FireSale)
            }
            .navigationTitle("🔥 SALE ")
        }
        .onAppear{ //When under Clothing list view, it then runs the network manager
            
            //Access it from viewmodel
            viewModeltwo.getInfo()
        }
    }
}
struct FireSaleView_Previews: PreviewProvider {
    static var previews: some View {
        FireSaleView()
    }
}
