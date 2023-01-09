//
//  RoundedButton.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct RoundedButton: View {
  let text: String
  var body: some View {
    Text(text)
      .font(.headline)
      .foregroundColor(Color.theme.accent)
      .frame(width: 340, height: 50)
      .background(Color.theme.secondaryTextColor)
      .clipShape(Capsule())
      .padding()
  }
}

struct RoundedButton_Previews: PreviewProvider {
  static var previews: some View {
    RoundedButton(text: "Click me!")
  }
}
