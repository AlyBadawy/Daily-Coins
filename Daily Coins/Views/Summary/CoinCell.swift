//
//  CoinCell.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct CoinCell: View {
  let coin: Coin
  
  var body: some View {
    VStack(alignment: .leading) {
      CoinImage(url: coin.image)
        .padding(.bottom, 8)
      
      HStack(spacing: 4) {
        Text(coin.symbol.uppercased())
          .foregroundColor(Color.theme.primaryTextColor)
          .font(.caption)
          .fontWeight(.bold)
        Text(coin.currentPrice.toCurrency())
          .font(.caption)
          .foregroundColor(.gray)
      }
      
      Text(coin.priceChangePercentage24H?.toPercentString() ?? "")
        .font(.title2)
        .foregroundColor((coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
    }
    .frame(width: 140, height: 140)
    .background(Color.theme.bgColor)
    .overlay(
      RoundedRectangle(cornerRadius: 10)
        .stroke(Color(.systemGray3), lineWidth: 2)
    )
  }
}

struct CoinCell_Previews: PreviewProvider {
  static var previews: some View {
    CoinCell(coin: dev.coin)
  }
}
