//
//  QuoteDetailViewController.swift
//  Quick Quotes
//
//  Created by Sage Ren  on 7/12/21.
//

import UIKit

class QuoteDetailViewController: UIViewController {
    var quote = ""
    @IBOutlet weak var quoteLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteLabel.text = quote
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
