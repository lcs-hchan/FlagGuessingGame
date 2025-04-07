//
//  Searchfunction.swift
//  FlagGuessingGame
//
//  Created by hayden on 2025-04-07.
//

import Foundation

func filtering(originalList:[Result], newsearchText: String) -> [Result]{
    if newsearchText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
        return originalList
    }
    var filteredResult: [Result] = []
    for result in originalList {
        if result.flagName.name.lowercased().contains(newsearchText.lowercased()){
            filteredResult.append(result)
        }
    }
    return filteredResult
}
