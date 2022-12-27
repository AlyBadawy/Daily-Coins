//
//  AuthViewModel.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject {
  @Published var userSession: FirebaseAuth.User?
  @Published var showImageSelector: Bool = false
  @Published var currentUser: User?
  
  private var tempUserSession: FirebaseAuth.User?
  private let userService = UserService()
  
  init() {
    self.userSession = Auth.auth().currentUser
    self.fetchUser()
  }
  
  func login(withEmail email: String, password: String) {
    
    Auth.auth().signIn(withEmail: email, password: password) { result, error in
      if let error = error {
        print("DEBUG: Failed to sign in user with error \(error.localizedDescription)")
        return
      }
      guard let user = result?.user else { return }
      self.userSession = user
      self.fetchUser()
    }
    
  }
  
  func signup(withEmail email: String, password: String, fullname: String, username: String) {
    Auth.auth().createUser(withEmail: email, password: password) { result, error in
      if let error = error {
        print("DEBUG: Failed to register user with error \(error.localizedDescription)")
        return
      }
      guard let user = result?.user else { return }
      self.tempUserSession = user
      
      let data = ["email": email,
                  "username": username.lowercased(),
                  "fullname": fullname]
      
      Firestore.firestore().collection("users")
        .document(user.uid)
        .setData(data) { _ in
          self.showImageSelector = true
          self.userSession = self.tempUserSession
          self.fetchUser()
        }
    }
  }
  
  func logout() {
    userSession = nil
    try? Auth.auth().signOut()
  }
  
//  func uploadImage(_ image: UIImage) {
//    guard let uid = tempUserSession?.uid else { return }
//    
//    ImageUploader.upload(image: image) { profileImageUrl in
//      Firestore.firestore().collection("users")
//        .document(uid)
//        .updateData(["profileImageUrl": profileImageUrl]) { _ in
//          self.userSession = self.tempUserSession
//          self.fetchUser()
//          self.showImageSelector = false
//        }
//    }
//  }
  
  func resetPassword(withEmail email: String) {
    Auth.auth().sendPasswordReset(withEmail: email) { error in
      // ...
    }
  }
  
  func fetchUser() {
    print("DEBUG: Fetching user ...")
    guard let uid = self.userSession?.uid else { return }
    
    print("DEBUG: Fetching user with UID \(uid)")
    userService.fetchUser(withUID: uid) { user in
      self.currentUser = user
    }
  }
}
