//
//  Scorer.swift
//  HikingSurvey
//
//  Created by Jeongwon Choi on 4/27/26.
//
import Foundation
import NaturalLanguage

class Scorer {
    let tagger = NLTagger(tagSchemes: [.sentimentScore])
    
    func score(_ text: String) -> Double {
        var sentimentScore = 0.0
        tagger.string = text
        tagger.enumerateTags(
            in: text.startIndex..<text.endIndex,
            unit: .paragraph,
            scheme: .sentimentScore,
            options: []) { sentiment, _ in
                if let sentimentString = sentiment?.rawValue,
                   let score = Double(sentimentString) {
                    sentimentScore = score
                    return true
                }
                return false
            }
        return sentimentScore
    }
}
