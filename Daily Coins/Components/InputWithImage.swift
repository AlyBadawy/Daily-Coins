//
//  InputWithImage.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI

struct InputWithImage: View {
  let imageName: String
  let placeHolderText: String
  @Binding var text: String
  
  var body: some View {
    VStack {
      HStack {
        Image(systemName: imageName)
          .resizable()
          .scaledToFit()
          .frame(width: 20, height: 20)
          .foregroundColor(Color.theme.placeHolder)
        
        TextField(placeHolderText, text: $text)
      }
      Divider()
        .background(Color.theme.placeHolder)
    }
  }
}

struct InputWithImage_Previews: PreviewProvider {
  static var previews: some View {
    InputWithImage(imageName: "envelope", placeHolderText: "Email", text: .constant(""))
  }
}
