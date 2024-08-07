//
//  LazyNavigationView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI

struct LazyNavigationView<Content: View> : View {
  let build: () -> Content
  
  init(_ build: @autoclosure @escaping()-> Content) {
    self.build = build
  }
  
  var body: Content {
    build()
  }
}


