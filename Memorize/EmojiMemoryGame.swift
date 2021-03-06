//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jathurchan Selvakumar on 10/01/2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["π§­", "π", "π", "βοΈ", "π", "π", "π", "π₯²", "βΊοΈ", "π", "π", "π", "π", "π₯°", "π", "π₯Έ", "π₯Ά", "π€―", "π€", "π»"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
