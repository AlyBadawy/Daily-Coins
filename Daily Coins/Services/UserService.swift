//
//  UserService.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/27/22.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
  func fetchUser(withUID uid: String, completion: @escaping(User) -> Void) {
    Firestore.firestore().collection("users")
      .document(uid)
      .getDocument { snapshot, error in
        guard let snapshot = snapshot else { return }
        guard let user = try? snapshot.data(as: User.self) else { return }
        completion(user)
      }
  }
  
  func fetchUsers(completion: @escaping([User]) -> Void) {
    Firestore.firestore().collection("users")
      .getDocuments { snapshot, _ in
        guard let documents = snapshot?.documents else { return }
        let users = documents.compactMap({ try? $0.data(as: User.self) })
        completion(users)
      }
  }
}

