//
//  QuoteModel.swift
//  Calmwell
//
//  Created by Nicolas A. Kerkau on 8/29/22.
//

import Foundation

class QuoteModel: ObservableObject {
    
    //Creat an array of Quotes
    var quotes = [Quote]()
    var affirmations = [String]()
    
    init() {
        affirmations.append("You touch - and continue to touch - many lives.")
        affirmations.append("You should trust yourself to make the best decision for you.")
        affirmations.append("You are proud to be you.")
        affirmations.append("You are your best source of motivation.")
        affirmations.append("You are able to solve your problems creatively.")
        affirmations.append("You deserve to fully accept yourself.")
        affirmations.append("Good things are coming your way.")
        affirmations.append("Everything in your life has a purpose.")
        affirmations.append("You cannot stress over things you cannot control.")
        affirmations.append("Your positivity encourages others to strive to be positive, too.")
        affirmations.append("You have all that you need to make this a great day in your life.")
        affirmations.append("You have as much brightness to offer the world as the next person.")
        affirmations.append("You are an important person.")
        affirmations.append("You aspire to be a giver; a giver of love, a giver of strength, and a giver of hope.")
        affirmations.append("You will work on seeing only the positives and block out the negatives of life.")
        affirmations.append("Challenges are opportunities to grow and improve.")
        affirmations.append("You are the architect of your life. You build its foundation and choose its contents.")
        affirmations.append("You are worth loving.")
        affirmations.append("You may not understand the good in this situation, but it is there.")
    }
    
    func getRandomAffirmation() -> String {
        
        // Generate a random number within the parameters of the quote array
        let indexMaxRange = affirmations.count
        let randomInt = Int.random(in: 0..<indexMaxRange)
        
        return affirmations[randomInt]
    }
    
    func getRandomQuote() -> Quote {
        
        // Generate a random number within the parameters of the quote array
        let indexMaxRange = quotes.count
        let randomInt = Int.random(in: 0..<indexMaxRange)
        
        return quotes[randomInt]
    }
    
    
    /*
    //MARK: Attempt at drawing random quotes from ZenQuoteApi
    func getQuotes() -> [Quote] {
        let urlPath = "https://zenquotes.io/api/quotes"
        let url = URL(string: urlPath)
        let urlRequest = URLRequest(url: url!)
        let urlSession = URLSession.shared
        let dataTask = urlSession.dataTask(with: urlRequest) { data, response, error in
            guard error != nil else { return }
            
            let decoder = JSONDecoder()
            do {
                let quoteData = try decoder.decode([Quote].self, from: data!)
                
                self.quotes = quoteData
            }
            catch {
                
            }
        }
        
        dataTask.resume()
        
        return quotes
    }
     */
}

struct Quote {
    
    var q:String
    var author:String
    
}
