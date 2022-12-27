//
//  SingUpView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI


struct SignUpView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var fullname: String = ""
  @State private var username: String = ""
  
  @EnvironmentObject var authModel: AuthViewModel
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    VStack {
      Header(title1: "Get Started.",
                 title2: "Create your account!")
      
      VStack(spacing: 40) {
        InputWithImage(imageName: "envelope",
                       placeHolderText: "Email",
                       text: $email)
        InputWithImage(imageName: "person",
                       placeHolderText: "Username",
                       text: $username)
        InputWithImage(imageName: "person",
                       placeHolderText: "Full name",
                       text: $fullname)
        InputWithImage(imageName: "lock",
                       placeHolderText: "Password",
                       isSecureField: true,
                       text: $password)
      }
      .padding(.horizontal, 32)
      .padding(.top, 44)
      
      Button {
        print("Sign up here")
        authModel.signup(withEmail: email,
                         password: password,
                         fullname: fullname,
                         username: username
        )
      } label: {
        Text("Sign up...")
          .font(.headline)
          .foregroundColor(Color.theme.secondaryTextColor)
          .frame(width: 340, height: 50)
          .background(Color.theme.green)
          .clipShape(Capsule())
          .padding()
      }
      .shadow(color: .gray.opacity(0.5), radius: 10)
      .padding(.top, 24)
      
      Spacer()
      
      Button {
        presentationMode.wrappedValue.dismiss()
      } label: {
        HStack {
          Text("Already have an account?")
            .font(.footnote)
          Text("Sign in")
            .font(.footnote)
            .fontWeight(.semibold)
        }
      }
      .padding(.bottom, 32)
      .foregroundColor(Color.theme.accent)
      
    }
    .ignoresSafeArea()
  }
}

struct SignUpView_Previews: PreviewProvider {
  static var previews: some View {
    SignUpView()
  }
}
