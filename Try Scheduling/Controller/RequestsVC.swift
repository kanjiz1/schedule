//
//  RequestsVC.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/9/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit
import Rswift

class RequestsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var requests = [Request]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM.dd.yyyy"
        
        requests = [Request(dateOfRequest: formatter.string(from: Date().tomorrow), shiftOfRequest: 3, shiftLength: Request.shiftLength.halfShift, anyComments: "Urgent Please"),
                    Request(dateOfRequest: formatter.string(from: Date().getAnyDate(differenceInDate: 3, partOfDay: Date().night)), shiftOfRequest: 3, shiftLength: Request.shiftLength.halfShift, anyComments: "Fill in ASAP"),
                    Request(dateOfRequest: formatter.string(from: Date().tomorrow), shiftOfRequest: 1, shiftLength: Request.shiftLength.fullShift, anyComments: "We're 4 men down."),
                    Request(dateOfRequest: formatter.string(from: Date().getAnyDate(differenceInDate: 10, partOfDay: Date().noon)), shiftOfRequest: 2, shiftLength: Request.shiftLength.fullShift, anyComments: "We need 2 People.")]
    }
}

extension RequestsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return requests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: REQUEST_CELL) as? RequestCell else {return RequestCell()}
        
        cell.configureCell(theDate: requests[indexPath.row].date, theShift: requests[indexPath.row].shift, theDurationOfWork: requests[indexPath.row].requestType.rawValue, anyComments: requests[indexPath.row].comments)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let discardAction = UITableViewRowAction(style: .destructive, title: "DISCARD") { (rowAction, indexPath) in
            self.requests.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        let acceptAction = UITableViewRowAction(style: .normal, title: "ACCEPT") { (rowAction, indexPath) in
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
        discardAction.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        acceptAction.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
        return [discardAction, acceptAction]
    }
}
