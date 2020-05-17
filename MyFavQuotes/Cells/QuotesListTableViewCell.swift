//
//  QuotesListTableViewCell.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 17/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import UIKit

class QuotesListTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var txtQuote: UITextView!
    
    @IBOutlet weak var quotRight: UIImageView!
    @IBOutlet weak var quotLeft: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        txtQuote.isEditable = false
        txtQuote.font = UIFont.boldSystemFont(ofSize: 20.0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
