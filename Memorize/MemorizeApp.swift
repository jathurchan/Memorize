//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jathurchan Selvakumar on 09/01/2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
