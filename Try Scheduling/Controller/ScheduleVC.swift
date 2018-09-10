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
        hideKeyboardWhenTappedAround()
        tableView.delegate = self
        tableView.dataSource = self
        let formatter = DateFormatter()
        formatter.dateFormat = "MM.dd.yyyy"
        schedules = [
            Schedule(date: formatter.string(from: Date().getAnyDate(differenceInDate: 4, partOfDay: Date().morning)), shift: 1, comments: "Working in the morning"),
            Schedule(date: formatter.string(from: Date().yesterday), shift: 2, comments: "I can work this time"),
            Schedule(date: formatter.string(from: Date().getAnyDate(differenceInDate: 3, partOfDay: Date().night)), shift: 3, comments: "I will work at night")]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
        //tableView.estimatedRowHeight = 120
        //tableView.rowHeight = UITableViewAutomaticDimension
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SCHEDULE_CELL) as? ScheduleCell else {return ScheduleCell()}
        cell.configureCell(date: schedules[indexPath.row].date, shift: schedules[indexPath.row].shift, comments: schedules[indexPath.row].comments)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let scheduleFeedVC = storyboard?.instantiateViewController(withIdentifier: SCHEDULE_DETAILS) as? ScheduleFeedVC else {return}
        scheduleFeedVC.initData(forSchdule: schedules[indexPath.row])
        presentDetail(scheduleFeedVC)
    }
    
}
