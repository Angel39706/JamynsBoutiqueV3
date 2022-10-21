//
//  CheckoutView.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 9/29/22.
//

import SwiftUI

struct CheckoutView: View {
    var body: some View {
        NavigationView{
            Text("Orders")
                .navigationTitle("Check Out")
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
