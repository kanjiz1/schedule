//
//  ScheduleVC.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/9/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit

class ScheduleVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var schedules = [Schedule]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
}

extension ScheduleVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schedules.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
