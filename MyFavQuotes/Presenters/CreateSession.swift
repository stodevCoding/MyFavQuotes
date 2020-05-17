//
//  CreateSession.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 17/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import Foundation
import SwiftyJSON

public protocol NetwortProtocol {
    func handleJSON(json: JSON)
}
//
//public protocol CreateSessionProtocol {
//    func handleCreateSession(movies: [MovieModel])
//}
//
//public class SearchMoviePresenter: NetwortProtocol {
//    public func handleJSON(json: JSON) {
//        if json != nil {
//            var list = [MovieModel]()
//            for i in 0..<json["Search"].count{
//                list.append(MovieModel(json: json["Search"][i]))
//            }
//            
//            listener?.handleSearchMovie(movies: list)
//        }
//    }
//    var listener : CreateSessionProtocol?
//    public init(listener: CreateSessionProtocol) {
//        self.listener = listener
//    }
//    
//    public func getSearchMovie(credentialsJSON: JSON) {
//        NetworkManager.postCreateSessionUser(credentialsJSON: credentialsJSON, listener: self)
//    }
//    
//}
