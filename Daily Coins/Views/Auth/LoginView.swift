//
//  LoginView.swift
//  Daily Coins
//
//  Created by Aly Badawy on 12/26/22.
//

import SwiftUI


struct LoginView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  
  @EnvironmentObject var authModel: AuthViewModel
  
  var body: some View {
    VStack {
      Header(title1: "Hello...", title2: "Welcome Back!")
      
      VStack(spacing: 40) {
        InputWithImage(imageName: "envelope",
                       placeHolderText: "Email",
                       text: $email)
        InputWithImage(imageName: "lock",
                       placeHolderText: "Password",
                       isSecureField: true,
                       text: $password)
      }
      .padding(.horizontal, 32)
      .padding(.top, 44)
      
      HStack {
        Spacer()
        Button {
          authModel.resetPassword(withEmail: email)
        } label: {
          Text("Forgot password?")
            .font(.caption)
            .bold()
            .foregroundColor(Color.theme.accent)
            .padding(.top)
            .padding(.trailing, 24)
        }
      }
      
      Button {
        print("Sign in here")
        authModel.login(withEmail: email, password: password)
      } label: {
        RoundedButton(text: "Sign in...")
      }
      .shadow(color: .gray.opacity(0.5), radius: 4)
      .padding(.top, 24)
      
      Button {
        print("Continue as a guest")
        authModel.signInGuest()
      } label: {
        Text("Continue as a guest")
          .font(.headline)
          .foregroundColor(Color.theme.accent)
          .padding()
      }
      .shadow(color: .gray.opacity(0.5), radius: 10)
      .padding(.top, 24)
      
      Spacer()
      
      NavigationLink {
        SignUpView()
          .navigationBarHidden(true)
      } label: {
        HStack {
          Text("Don't have an account?")
            .font(.footnote)
          Text("Sign up")
            .font(.footnote)
            .fontWeight(.semibold)
        }
      }
      .padding(.bottom, 32)
      .foregroundColor(Color.theme.accent)
      
    }
    .ignoresSafeArea()
    .navigationBarHidden(true)
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}

