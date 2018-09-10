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
        tableView.estimatedRowHeight = 120
        //tableView.rowHeight = UITableViewAutomaticDimension
        tableView.reloadData()
    }
}

extension ScheduleVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SCHEDULE_CELL) as? ScheduleCell else {return ScheduleCell()}
        cell.configureCell(date: "Today", shift: 3, comments: "Today is a good day to work")
        return cell
    }
    
}
