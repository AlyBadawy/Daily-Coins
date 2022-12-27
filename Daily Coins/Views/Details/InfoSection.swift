//
//  InfoSection.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct InfoSection: View {
  let infoString: String
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text("Description")
        .font(.title)
        .bold()
        .foregroundColor(Color.theme.accent)
      //        .shadow(color: Color.theme.accent.opacity(0.7), radius: 4)
        .frame(maxWidth: .infinity, alignment: .leading)
      
      Text(infoString)
        .font(.caption)
    }
    .padding()
  }
}

struct InfoSection_Previews: PreviewProvider {
  static var previews: some View {
    InfoSection(infoString: "some text")
  }
}
