//
//  FeedPageViewController.swift
//  RSSwift
//
//  Created by Arled Kola on 27/10/2014.
//  Copyright (c) 2014 Arled. All rights reserved.
//

import UIKit

class FeedPageViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    @IBOutlet weak var myWebView: UIWebView!
    
    var selectedFeedTitle = String()
    var selectedFeedFeedContent = String()
    var selectedFeedURL = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        let feedContent:String! = "<h3>\(selectedFeedTitle)</h3>\(selectedFeedFeedContent)"
        myWebView.loadHTMLString(feedContent, baseURL: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        
        if segue.identifier == "openWebPage" {
            
            let fwpvc: FeedWebPageViewController = segue.destination as! FeedWebPageViewController
            selectedFeedURL =  selectedFeedURL.replacingOccurrences(of: " ", with:"")
            selectedFeedURL =  selectedFeedURL.replacingOccurrences(of: "\n", with:"")
            fwpvc.feedURL = selectedFeedURL
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
