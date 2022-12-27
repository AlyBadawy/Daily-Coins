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
  var isSecureField: Bool?
  
  @Binding var text: String
  
  var body: some View {
    VStack {
      HStack {
        Image(systemName: imageName)
          .resizable()
          .scaledToFit()
          .frame(width: 20, height: 20)
          .foregroundColor(Color.theme.placeHolder)
        
        if isSecureField ?? false {
          SecureField(placeHolderText, text: $text)
            .textInputAutocapitalization(.never)
        } else {
          TextField(placeHolderText, text: $text)
            .textInputAutocapitalization(.never)
        }
      }
      Divider()
        .background(Color.theme.placeHolder)
    }
  }
}

struct InputWithImage_Previews: PreviewProvider {
  static var previews: some View {
    InputWithImage(imageName: "lock",
                   placeHolderText: "Password",
                   isSecureField: true,
                   text: .constant(""))
  }
}
