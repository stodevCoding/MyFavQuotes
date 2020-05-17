//
//  QuoteDetailViewController.swift
//  MyFavQuotes
//
//  Created by Custodio Anthony on 18/05/2020.
//  Copyright © 2020 Stod. All rights reserved.
//

import UIKit


class QuoteDetailViewController: UIViewController {
    
    var quote: ListQuotes?

    @IBOutlet weak var quoteBody: UITextView!
    @IBOutlet weak var leftQuot: UIImageView!
    @IBOutlet weak var rightQuots: UIImageView!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblDialogue: UILabel!
    
    @IBOutlet weak var lblPrivate: UILabel!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblDownVote: UILabel!
    @IBOutlet weak var lblUpVote: UILabel!
    @IBOutlet weak var lblUrl: UILabel!
    @IBOutlet weak var lblPermaLink: UILabel!
    @IBOutlet weak var lblTags: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteBody.text = quote?.body
        lblAuthor.text = quote?.author
        lblId.text = quote?.id
        lblUrl.text = quote?.url
        lblPermaLink.text = quote?.authorPermaLink
        lblTags.text = quote?.tags
        lblPrivate.text = quote?.privateQuote
        lblDialogue.text = quote?.dialogue
        lblDownVote.text = quote?.downVotesCount
        lblUpVote.text = quote?.upVotesCount
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
