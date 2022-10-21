//
//  ProductCell.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 9/30/22.
//

import SwiftUI

struct ProductCell: View {
    
    let Product: Product
    var body: some View {
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom)
            {
                Image("32EE08AF-1410-471B-BCE8-84E4D0B306CE")
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 150, height: 150)
                    .scaledToFit()
        
                VStack(alignment: .leading)
                {
                    Text(Product.name)
                        .font(.system(size: 10))
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("$\(Product.price, specifier: "%.2f")")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }
                .padding()
                .frame(width: 150,height: 40, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(15)
            }
            .padding()
            .shadow(radius:5)
        }
    }
    
    struct ProductCell_Previews: PreviewProvider {
        static var previews: some View {
            ProductCell(Product: MockData.sampleProduct)
        }
    }
}
