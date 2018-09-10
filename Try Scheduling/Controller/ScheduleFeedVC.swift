//
//  ScheduleFeedVC.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/10/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit

class ScheduleFeedVC: UIViewController {

    var schedule: Schedule?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func initData(forSchdule schedule: Schedule){
        self.schedule = schedule
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
}
