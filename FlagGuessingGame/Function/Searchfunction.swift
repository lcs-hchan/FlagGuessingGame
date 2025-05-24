//
//  Searchfunction.swift
//  FlagGuessingGame
//
//  Created by hayden on 2025-04-07.
//

import Foundation

func filtering(originalList:[Result], newsearchText: String) -> [Result]{
    // If there isn't anything in the textField
    if newsearchText.isEmpty {
        // Return the orginal list
        return originalList
    }
    // filtered result uses Result to create an empty array
    var filteredResult: [Result] = []
    for result in originalList {
        // if the indivitual flag items name has what is written in the searchText
        if result.flagName.name.lowercased().contains(newsearchText.lowercased()){
            // all of the filtered result is appeneded towards the filteredResult
            filteredResult.append(result)
        }
    }
    // Return the filtered result
    return filteredResult
}
