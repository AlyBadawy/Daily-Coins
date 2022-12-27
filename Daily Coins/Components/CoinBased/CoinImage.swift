//
//  CoinImage.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct CoinImage: View {
  let url: String
  
  var body: some View {
    AsyncImage(url: URL(string: url)) { image in
      image
        .resizable()
    } placeholder: {
      ProgressView()
        .progressViewStyle(.circular)
        .frame(width: 32, height: 32)
        .background(Color.theme.accent.opacity(0.7))
        .tint(Color.theme.secondaryTextColor)
        .cornerRadius(50)
    }
    .scaledToFit()
    .frame(width: 32, height: 32)
    .clipShape(Circle())
  }
}

struct CoinImage_Previews: PreviewProvider {
  static var previews: some View {
    CoinImage(url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579")
  }
}
