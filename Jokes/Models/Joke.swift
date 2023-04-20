//
//  Joke.swift
//  Jokes
//
//  Created by dyhidrogen monoxide on 2023/4/14.
//

import Foundation

struct Joke: Identifiable, Codable {
    let type: String
    let setup: String
    let punchline: String
    let id: Int
}

let exampleJoke = Joke(type: "general",
                      setup: "How much doew a hipster weigh?",
                      punchline: "An instagram",
                      id: 146)


