//
//  AllCoinsList.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct AllCoinsList: View {
  @StateObject var coinsVM: CoinsFetcher
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("All coins")
        .font(.headline)
        .padding()
      
      HStack {
        Text("Coin")
        Spacer()
        Text("Prices")
      }
      .font(.caption)
      .foregroundColor(.gray)
      .padding(.horizontal)
      
      ScrollView {
        VStack {
          ForEach(coinsVM.coins) { coin in
            NavigationLink {
              LazyNavigationView(CoinDetailsView(coin: coin))
            } label: {
              CoinRow(coin: coin)
            }
            
          }
        }
      }
    }
  }
}

struct AllCoinsList_Previews: PreviewProvider {
  static var previews: some View {
    AllCoinsList(coinsVM: CoinsFetcher())
  }
}

