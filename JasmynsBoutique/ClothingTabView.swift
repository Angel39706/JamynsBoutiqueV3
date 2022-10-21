//
//  ContentView.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 7/7/22.
//

import SwiftUI

struct ClothingTabView: View {
    var body: some View {
        TabView {
            ClothingListView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            FireSaleView()
                .tabItem{
                    Image(systemName: "exclamationmark.square.fill")
                    Text("Fire Sale")
                }
            CheckoutView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Check Out")
                }
            AccountView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }
                .accentColor(Color("AccentColor"))
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ClothingTabView()
        }
    }
}
