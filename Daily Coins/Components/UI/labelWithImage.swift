//
//  labelWithImage.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct labelWithImage: View {
  let title: String
  let imageName: String
  var alert: Bool?
  
  var body: some View {
    HStack(spacing: 16) {
      Image(systemName: imageName)
        .font(.headline)
        .frame(width: 24)
        .scaledToFit()
      Text(title)
        .font(alert ?? false ? .headline : .subheadline)
      Spacer()
    }
    .foregroundColor(alert ?? false ? Color.theme.red : Color.theme.accent)
    .frame(height: 40)
    .padding(.horizontal)
  }
}

struct labelWithImage_Previews: PreviewProvider {
    static var previews: some View {
        labelWithImage(title: "Logout", imageName: "arrow.left.square")
    }
}
