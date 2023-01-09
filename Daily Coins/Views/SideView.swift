//
//  SideView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct SideView: View {
  @EnvironmentObject var authModel: AuthViewModel
  
  var body: some View {
    VStack(spacing: 2) {
      HStack { Spacer() }
      Image("logo")
        .resizable()
        .scaledToFit()
        .frame(width: 160, height: 160)
        .shadow(radius: 1)
      
      Divider()
        .padding(.horizontal, 4)
      
      if authModel.userSession?.isAnonymous ?? true {
        labelWithImage(title: "You signed in as a guest",
                       imageName: "person.fill.questionmark",
                       alert: true)
        .padding(.top, 8)
      }
      
      VStack(alignment: .leading) {
        HStack { Spacer() }
        
        Button {
          //
        } label: {
          labelWithImage(title: "Settings", imageName: "gearshape.2")
        }
        
        
        
        Button {
          authModel.logout()
        } label: {
          labelWithImage(title: "Logout", imageName: "arrow.left.square")
        }
        
        Spacer()
        
        Button {
          //
        } label: {
          labelWithImage(title: "Privacy Policy", imageName: "eye.trianglebadge.exclamationmark")
        }
        
        Button {
          //
        } label: {
          labelWithImage(title: "Credits", imageName: "heart")
        }
        Button {
          //
        } label: {
          labelWithImage(title: "Write to the devs", imageName: "paperplane")
        }
        
        Spacer()
        Spacer()
        Spacer()
        
        
      }.padding(.top, 8)
      
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
    SideView().environmentObject(AuthViewModel())
  }
}
