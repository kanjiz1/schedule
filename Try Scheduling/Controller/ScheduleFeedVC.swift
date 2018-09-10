//
//  ScheduleFeedVC.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/10/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit

class ScheduleFeedVC: UIViewController {

    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var startTimeLbl: UILabel!
    @IBOutlet weak var endTimeLbl: UILabel!
    @IBOutlet weak var supervisorNameLbl: UILabel!
    
    
    var schedule: Schedule?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if schedule?.shift == 1 {
            startTimeLbl.text = "5:30 AM"
            endTimeLbl.text = "1:30 PM"
        } else if schedule?.shift == 2 {
            startTimeLbl.text = "1:30 PM"
            endTimeLbl.text = "9:30 PM"
        } else {
            startTimeLbl.text = "9:30 PM"
            endTimeLbl.text = "5:30 AM"
        }
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipedRight))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
    }
    
    func initData(forSchdule schedule: Schedule){
        self.schedule = schedule
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @objc func swipedRight(){
        dismissDetail()
    }
}
