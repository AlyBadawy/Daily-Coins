//
//  ContentView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI

struct RouterView: View {
  @StateObject var authVM = AuthViewModel()
  
  var body: some View {
    NavigationView {
      Group {
        if authVM.userSession == nil {
          LoginView()
        } else {
          HomeView()
        }
      }
    }.environmentObject(authVM)
  }
}


struct RouterView_Previews: PreviewProvider {
  static var previews: some View {
    RouterView()
  }
}
