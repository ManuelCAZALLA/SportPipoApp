//
//  LoginViewModel.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 10/12/24.
//

import Foundation
import Combine
import KeychainSwift

class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var loginStatus: String?  

    private let keychain = KeychainSwift()

    func loginOrRegisterUser() {
        guard !username.isEmpty else {
            loginStatus = "Por favor, introduce un nombre de usuario."
            return
        }

        // Verificar si el token del usuario ya está guardado
        if let _ = keychain.get(username) {
            loginStatus = "Bienvenido de nuevo, \(username)."
        } else {
            // Generar un token y guardarlo en Keychain
            let token = UUID().uuidString
            keychain.set(token, forKey: username, withAccess: .accessibleWhenUnlocked)
            loginStatus = "Registro exitoso. Bienvenido, \(username)."
        }
    }
}
