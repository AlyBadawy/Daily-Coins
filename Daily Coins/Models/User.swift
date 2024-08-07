//
//  User.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
  @DocumentID var id: String?
  let username: String
  let fullname: String
  let profileImageUrl: String
  let email: String
  let isAnonymous: Bool
}
