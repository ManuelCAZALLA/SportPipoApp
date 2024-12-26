//
//  StatusModel.swift
//  SportPipoApp
//
//  Created by Manuel Cazalla Colmenero on 10/12/24.
//

import Foundation

enum Status {
    case none
    case loaded
    case loading
    case error(error: String)
}
