//
//  LoginView.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 10/12/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()

    var body: some View {
        VStack(spacing: 20) {
            TextField("Nombre de usuario", text: $viewModel.username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .autocapitalization(.none)

            Button(action: {
                viewModel.loginOrRegisterUser()
            }) {
                Text("Iniciar sesión o registrarse")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
            }

            if let status = viewModel.loginStatus {
                Text(status)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}
#Preview {
    LoginView()
}
