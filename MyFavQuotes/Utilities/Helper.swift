//
//  Helper.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 17/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import UIKit

public class Helper {
    public static let sharedInstance = Helper()
    
    public var quotes = [ListQuotes]()
    public var indexRow: Int?
}
