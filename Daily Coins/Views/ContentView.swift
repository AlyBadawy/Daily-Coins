//
//  ContentView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI

struct ContentView: View {
  @StateObject var authVM = AuthViewModel()
  
  var body: some View {
    NavigationView {
      Group {
        if authVM.userSession == nil {
          LoginView()
        } else {
          Button {
            authVM.logout()
          } label: {
            Text("log out")
          }
        }
      }
    }.environmentObject(authVM)
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
