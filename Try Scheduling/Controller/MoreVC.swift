//
//  MoreVC.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/10/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit
import WebKit

class MoreVC: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
    var webV: UIWebView!
    @IBOutlet weak var numberofTokensLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cancelButton.isHidden = true
        webV = UIWebView(frame: CGRect(x:0, y:70, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 90))
        webV.isHidden = true
        self.view.addSubview(webV)
    }
    
    @IBAction func redeemTokensPressed(_ sender: Any) {
        self.webV.loadRequest(URLRequest(url: URL(string: "https://www.swagbucks.com/")!))
        self.webV.isHidden = false
        self.cancelButton.isHidden = false
    }
    @IBAction func cancelButtonPressed(_ sender: Any) {
        webV.isHidden = true
        cancelButton.isHidden = true
    }
}
