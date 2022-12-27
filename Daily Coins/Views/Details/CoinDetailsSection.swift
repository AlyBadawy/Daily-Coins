//
//  CoinDetailsSection.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct CoinDetailsSection: View {
  let model: DetailSection
  
  private let columns: [GridItem] = [
    GridItem(.flexible()),
    GridItem(.flexible())
  ]
  
  var body: some View {
    VStack(spacing: 8) {
      Text(model.title)
        .font(.title)
        .bold()
        .foregroundColor(Color.theme.accent)
        .frame(maxWidth: .infinity, alignment: .leading)
      
      LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
        ForEach(model.stats) { stat in
          StatisticView(model: stat)
        }
      }
    }.padding()
  }
}

struct CoinDetailsSection_Previews: PreviewProvider {
  static var previews: some View {
    CoinDetailsSection(model: dev.sectionModel)
  }
}
