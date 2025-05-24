//
//  Flag.swift
//  FlagGuessingGame
//
//  Created by hayden on 2025-04-03.
//

import Foundation

struct Flag: Hashable, Identifiable{
    let id = UUID()
    let name: String
    let image: String
}

let allflags = [
    Flag(name: "hongkong", image: "🇭🇰"),
    Flag(name: "canada", image: "🇨🇦"),
    Flag(name: "france", image: "🇫🇷"),
    Flag(name: "germany", image: "🇩🇪"),
    Flag(name: "china", image: "🇨🇳"),
    Flag(name: "japan", image: "🇯🇵"),
    Flag(name: "brazil", image: "🇧🇷"),
    Flag(name: "india", image: "🇮🇳"),
    Flag(name: "italy", image: "🇮🇹"),
    Flag(name: "mexico", image: "🇲🇽"),
    Flag(name: "australia", image: "🇦🇺"),
    Flag(name: "russia", image: "🇷🇺"),
    Flag(name: "iceland", image: "🇮🇸"),
    Flag(name: "poland", image: "🇵🇱"),
    Flag(name: "belgium", image: "🇧🇪"),
    Flag(name: "cuba", image: "🇨🇺")
    
]
