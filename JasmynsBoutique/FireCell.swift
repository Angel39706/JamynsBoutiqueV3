//
//  NewInfoCell.swift
//  JasmynsBoutique
//
//  Created by Angel Martinez on 10/7/22.
//

import SwiftUI

struct FireCell: View {
    let FireSale: FireSale
    var body: some View {
        HStack{
            Image("42045CBB-129E-4788-84CA-39D9AEB67ADB")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(25)
            
            VStack(alignment: .leading, spacing: 5){
                Text(FireSale.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(FireSale.DiscountedPrice, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
        }
}

struct NewInfoCell_Previews: PreviewProvider {
    static var previews: some View {
        FireCell(FireSale: MockDataTwo.sampleInfo)
    }
}
