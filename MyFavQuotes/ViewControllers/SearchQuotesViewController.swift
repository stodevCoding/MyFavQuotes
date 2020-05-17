//
//  SearchQuotesTableViewController.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 17/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import UIKit
import Foundation

class SearchQuotesViewController: UIViewController, SearchQuotesByUserProtocol, UITableViewDelegate {
    
    var quotes = Helper.sharedInstance.quotes
    var presenter: SearchQuotesPresenter?
    var list: [ListQuotes] = []
    var idQuote: [String] = []
    
    
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var quotesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
    }
    
    func initView() {
        quotesTableView.delegate = self
        quotesTableView.dataSource = self
        presenter = SearchQuotesPresenter(listener: self)
    }
    func handleSearchQuotesByUser(quotes: [ListQuotes]) {
        for quote in quotes {
            list.append(contentsOf: [quote])
        }
        quotesTableView.reloadData()
    }
    
    @IBAction func searchAction(_ sender: Any) {
        quotesTableView.dataSource = nil
        if searchBar.text != "" {
            let txt = searchBar.text
            let searchUserTextFormated = txt!.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
            presenter?.getFavoritesQuotesbyUser(pseudo: searchUserTextFormated)
        } else {
            let alert = UIAlertController(title: "Oops", message: "Il faut quand même écrire quelque chose ^^", preferredStyle: .alert)
            alert.addAction((UIAlertAction(title: "Ok", style: .default, handler: nil)))
            self.present(alert, animated: true, completion: nil)
        }
        initView()
        dismissKeyboard()
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    // MARK: - Table view data source
}


extension SearchQuotesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell", for: indexPath) as! QuotesListTableViewCell
        
        let quote = self.list[indexPath.row]
        cell.lblAuthor?.text = quote.author
        cell.txtQuote?.text = quote.body
        if (quote.author == nil && quote.body == nil) {
            cell.quotLeft.isHidden = true
            cell.quotRight.isHidden = true
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let quoteSelected = list[indexPath.row]
        print(quoteSelected)
        
    }
}
