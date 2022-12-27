//
//  SummaryView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import SwiftUI

struct MainView: View {

  @State private var showSideMenu: Bool = false
  
  init() {
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
  }
  
  var body: some View {
    
    NavigationStack {
      ZStack(alignment: .topLeading) {
        SummaryView()
        // MARK: - Side Menu
        if showSideMenu {
          Color.theme.accent
            .opacity(showSideMenu ? 0.1 : 0.0)
            .onTapGesture {
              withAnimation(.easeInOut) {
                self.showSideMenu = false
              }
            }
            .ignoresSafeArea()
          SideView()
            .frame(width: 320)
            .offset(x: showSideMenu ? 0 : -320, y: 0)
            .shadow(color: Color.theme.accent.opacity(0.08), radius: 4)
        }
      }
      // MARK: - Navigation Bar
      .navigationBarHidden(showSideMenu)
      .navigationTitle("Daily Coins!")
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button {
            withAnimation(.easeInOut) {
              showSideMenu.toggle()
            }
          } label: {
            
            Image(systemName: "line.3.horizontal")
              .resizable()
              .aspectRatio(1.5, contentMode: .fit)
          }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
          ZStack {
            Circle()
              .fill(Color.theme.logoBG)
              .frame(width: 32, height: 32)
            Circle()
              .strokeBorder(Color.theme.accent.opacity(0.2), lineWidth: 1)
              .frame(width: 32, height: 32)
            Image("logo")
              .resizable()
              .aspectRatio(1.0, contentMode: .fit)
              .frame(width: 26, height: 26)
          }
        }
      }
    }
    .onAppear {
      showSideMenu = false
    }
  }
  
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
