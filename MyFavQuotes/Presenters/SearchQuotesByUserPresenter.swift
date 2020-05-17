//
//  SearchQuotesByUserPresenter.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 17/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

public protocol QuotesByUserNetwortProtocol {
    func handleJSON(json: JSON)
}

public protocol SearchQuotesByUserProtocol {
    func handleSearchQuotesByUser(quotes: [ListQuotes])
}

public class SearchQuotesPresenter: QuotesByUserNetwortProtocol {
    public func handleJSON(json: JSON) {
        var list = [ListQuotes]()
        for i in 0..<json["quotes"].count{
            list.append(ListQuotes(json: json["quotes"][i]))
        }
        
        listener?.handleSearchQuotesByUser(quotes: list)
    }
    var listener : SearchQuotesByUserProtocol?
    public init(listener: SearchQuotesByUserProtocol) {
        self.listener = listener
    }
    
    public func getFavoritesQuotesbyUser(pseudo: String) {
        NetworkManager.getFavQuotesbyUser(pseudo: pseudo, listener: self)
    }
    
}
