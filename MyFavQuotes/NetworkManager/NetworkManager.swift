//
//  NetworkManager.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 17/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

public class NetworkManager {
    
    
    
    public static func postCreateSessionUser(credentialsJSON: JSON, listener: NetwortProtocol) {
        let headers: HTTPHeaders = [
            "Authorization": "Bearer " + NetworkConst.apikey,
            "Accept": "application/json"
        ]
        
        var url = NetworkConst.base_url
        url = url + "users/:login" //+ credentialsJSON
        AF.request(url as URLConvertible, method: .post, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
            switch response.result {
            case let .success(value):
                
                listener.handleJSON(json: JSON(value))
                
            case let .failure(error):
                print(error)
            }
        }
    }
        //
        //    public static func getUser() {
        //        let url = NSMutableURLRequest(url: NSURL(string: NetworkConst.base_url)! as URL)
        //
        //        url.setValue(NetworkConst.apikey, forHTTPHeaderField: "Authorization")
        //
        //        AF.request(url as! URLConvertible, method: .get).responseJSON { response in
        //            let jsonResponse = response.value {
        //                listener.handleJSON(json: JSON(jsonResponse))
        //            }
        //            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
        //                print("Data: \(utf8Text)")
        //            }
        //        }
        //    }
        //
        //
        //
        public static func getUserInfo(pseudo: String, listener: QuotesByUserNetwortProtocol) {
            let headers: HTTPHeaders = [
                "Authorization": "Bearer " + NetworkConst.apikey,
                "Accept": "application/json"
            ]
            
            var url = NetworkConst.base_url
            url = url + "quotes/?filter=" + pseudo + "&type=user"
            AF.request(url as URLConvertible, method: .get, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
                switch response.result {
                case let .success(value):
                    
                    listener.handleJSON(json: JSON(value))
                    
                case let .failure(error):
                    print(error)
                }
            }
        }
        
        public static func getFavQuotesbyUser(pseudo: String, listener: QuotesByUserNetwortProtocol) {
            let headers: HTTPHeaders = [
                "Authorization": "Bearer " + NetworkConst.apikey,
                "Accept": "application/json"
            ]
            
            var url = NetworkConst.base_url
            url = url + "quotes/?filter=" + pseudo + "&type=user"
            AF.request(url as URLConvertible, method: .get, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
                switch response.result {
                case let .success(value):
                    
                    listener.handleJSON(json: JSON(value))
                    
                case let .failure(error):
                    print(error)
                }
            }
        }
}
