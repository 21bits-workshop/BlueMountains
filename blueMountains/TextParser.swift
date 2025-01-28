//
//  TextParser.swift
//  blueMountains
//
//  Created by 21bits on 1/22/25.
//

class TextParser {
    let vocabulary:     [String]
    var inputString:    String?
    var parsedText:     [String]
    
    init() {
        self.vocabulary     = constants.verbList + constants.nounList
        self.inputString    = nil
        self.parsedText     = []
    }
    
    func getUserInput(prompt: String) {
        print(prompt, terminator: " ")
        inputString = readLine()
    }
    
    func splitText() {
        parsedText.removeAll()  // We only want to be dealing with the contents of one line at a time.
        let wordList = inputString?.split(separator: " ") ?? []
        for word in wordList {
            parsedText.append(String(word))
        }
    }
    
    func getCommand() -> String {
        // We assume that the first word in the input string is a command.
        // Keep an eye on this, may cause trouble later.
        
        return parsedText.first ?? ""
    }
    
    func stepThroughParsedText() {
        for word in parsedText {
            // TODO: Actually do something here.
            print(word)
        }
    }
    
    func parseLine() -> [String] {
        // Convert to lowercase to avoid having to handle every possible capitalization.
        let command: String = self.getCommand().lowercased()
        
        if vocabulary.contains(command) {
            return parsedText
        } else {
            return []
        }
    }
}
