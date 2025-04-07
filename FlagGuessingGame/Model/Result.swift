//
//  Result.swift
//  FlagGuessingGame
//
//  Created by hayden on 2025-04-07.
//

import Foundation

struct Result: Identifiable {
    let id = UUID()
    let flagName: Flag
    let flagImage: Flag
    let outcome: Outcome
}
