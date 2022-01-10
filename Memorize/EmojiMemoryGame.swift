//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jathurchan Selvakumar on 10/01/2022.
//

import SwiftUI

class EmojiMemoryGame {
    
    static let emojis = ["🧭", "🏔", "🚀", "✈️", "😀", "😁", "😅", "🥲", "☺️", "😊", "😇", "🙂", "😍", "🥰", "😎", "🥸", "🥶", "🤯", "🤖", "😻"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
}
