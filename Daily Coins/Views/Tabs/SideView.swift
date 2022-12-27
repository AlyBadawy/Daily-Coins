//
//  SideView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct SideView: View {
  var body: some View {
    VStack(spacing: 2) {
      HStack { Spacer() }
      Image("logo")
        .resizable()
        .scaledToFit()
        .frame(width: 240, height: 240)
        .shadow(radius: 1)
      Spacer()
      Text("Daily Coins! V\(UIApplication.appVersion) (Build: \(UIApplication.buildVersion))")
        .font(.caption2)
      Text("Developed by: Aly Badawy")
        .font(.caption)
      
    }
    .padding()
    .foregroundColor(Color.theme.accent)
    .background(Color.theme.menuBG)
  }
}

struct SideView_Previews: PreviewProvider {
  static var previews: some View {
    SideView()
  }
}
