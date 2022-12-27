//
//  CustomLoadingIndicator.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct CustomLoadingIndicator: View {
  var body: some View {
    ProgressView()
      .progressViewStyle(.circular)
      .scaleEffect(x: 2.5, y: 2.5, anchor: .center)
      .frame(width: 100, height: 100)
      .background(Color.theme.accent.opacity(0.7))
      .tint(Color.theme.secondaryTextColor)
      .cornerRadius(50)
  }
}

struct CustomLoadingIndicator_Previews: PreviewProvider {
  static var previews: some View {
    CustomLoadingIndicator()
  }
}

