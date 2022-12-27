//
//  Color.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI

extension Color {
  static var theme = ColorTheme()
}

struct ColorTheme {
  let accent = Color("AccentColor")
  let bgColor = Color("bgColor")
  let primaryTextColor = Color("primaryTextColor")
  let secondaryTextColor = Color("secondaryTextColor")
  let red = Color("red")
  let green = Color("green")
  let logoBG = Color("logoBG")
  let menuBG = Color("menuBG")
  let placeHolder = Color("placeHolder")
  let sideShadow = Color("sideShadow")
}
