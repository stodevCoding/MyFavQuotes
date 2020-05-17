//
//  ListQuotes.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 17/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import Foundation
import SwiftyJSON

public class ListQuotes {
    public var id: String?
    public var dialogue: String?
    public var privateQuote: String?
    public var tags: String?
    public var url: String?
    public var favCount: String?
    public var upVotesCount: String?
    public var downVotesCount: String?
    public var author: String?
    public var authorPermaLink: String?
    public var body: String?
    
    public init(json: JSON) {
        self.id = json["id"].stringValue
        self.dialogue = json["dialogue"].stringValue
        self.privateQuote = json["private"].stringValue
        self.tags = json["tags"].stringValue
        self.url = json["url"].stringValue
        self.favCount = json["favorites_count"].stringValue
        self.upVotesCount = json["upvotes_count"].stringValue
        self.downVotesCount = json["downvotes_count"].stringValue
        self.author = json["author"].stringValue
        self.authorPermaLink = json["author_permalink"].stringValue
        self.body = json["body"].stringValue
    }
}
