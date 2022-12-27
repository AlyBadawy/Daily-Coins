//
//  CoinRow.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct CoinRow: View {
  let coin: Coin
  
  var body: some View {
    HStack {
      // Market Cap Rank
      Text("\(coin.marketCapRank)")
        .font(.caption)
        .foregroundColor(.gray)
      
      // Image
      CoinImage(url: coin.image)
      
      // Coin name info
      VStack(alignment: .leading, spacing: 4) {
        Text(coin.name)
          .font(.subheadline)
          .fontWeight(.semibold)
        Text(coin.symbol.uppercased())
          .font(.caption)
          .foregroundColor(Color.theme.accent)
      }
      .foregroundColor(Color.theme.primaryTextColor)
      .padding(.leading, 6)
      
      // Spacer
      Spacer()
      
      // Coin price info
      VStack(alignment: .trailing, spacing: 4) {
        Text(coin.currentPrice.toCurrency())
          .font(.subheadline)
          .fontWeight(.semibold)
        
        HStack(spacing: 2) {
          Text(coin.priceChangePercentage24H?.toPercentString() ?? "")
            .font(.caption)
            .foregroundColor(coin.priceChangePercentage24H ?? 0 >= 0 ? Color.theme.green : Color.theme.red)
          Image(systemName: coin.priceChangePercentage24H ?? 0 >= 0 ?  "arrowtriangle.up.fill" : "arrowtriangle.down.fill")
            .font(.caption)
            .foregroundColor(coin.priceChangePercentage24H ?? 0 >= 0 ? Color.theme.green : Color.theme.red)
        }
      }
      .foregroundColor(Color.theme.primaryTextColor)
      .padding(.leading, 6)
    }
    .padding(.horizontal)
    .padding(.vertical, 4)
  }
}

struct CoinRow_Previews: PreviewProvider {
  static var previews: some View {
    CoinRow(coin: dev.coin)
  }
}

