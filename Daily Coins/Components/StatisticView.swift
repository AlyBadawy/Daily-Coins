//
//  StatisticView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct StatisticView: View {
  let model: Statisic
  
  var body: some View {
    VStack(alignment: .leading, spacing: 4) {
      Text(model.title)
        .font(.caption)
        .foregroundColor(Color.theme.accent)
        .opacity(0.8)
      
      Text(model.value)
        .font(.headline)
      
      if let perctChange = model.percentageChange {
        HStack(spacing: 4) {
          Image(systemName: perctChange >= 0 ? "arrowtriangle.up.fill" : "arrowtriangle.down.fill")
            .font(.caption)
          Text(perctChange.toPercentString())
            .font(.caption)
            .bold()
        }.foregroundColor(perctChange >= 0 ? Color.theme.green : Color.theme.red)
      }
    }
  }
}

struct StatisticView_Previews: PreviewProvider {
  static var previews: some View {
    StatisticView(model: dev.stat2)
  }
}
