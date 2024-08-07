//
//  Header.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI

struct Header: View {
  let title1: String
  let title2: String
  var body: some View {
    VStack(alignment: .leading) {
      HStack { Spacer() }
      Text(title1)
        .font(.largeTitle)
        .fontWeight(.semibold)
      Text(title2)
        .font(.largeTitle)
        .fontWeight(.semibold)
    }
    .frame(height: 260)
    .padding(.leading)
    .background(Color.theme.secondaryTextColor)
    .foregroundColor(Color.theme.accent)
    .clipShape(RoundedShape(corners: [.bottomRight], radius: 120))
    .shadow(color: .gray.opacity(0.5), radius: 4)
  }
}

struct Header_Previews: PreviewProvider {
  static var previews: some View {
    Header(title1: "Hello.", title2: "Welcome back!")
  }
}
