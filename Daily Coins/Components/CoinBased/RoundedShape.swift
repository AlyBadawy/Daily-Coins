//
//  RoundedShape.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI


struct RoundedShape: Shape {
  var corners: UIRectCorner
  var radius: Int
  func path(in rect: CGRect) -> Path  {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    
    return Path(path.cgPath)
  }
}

