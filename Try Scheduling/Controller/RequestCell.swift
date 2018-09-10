//
//  RequestCell.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/10/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit

class RequestCell: UITableViewCell {

    @IBOutlet weak var shiftLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var commentsLbl: UILabel!
    @IBOutlet weak var durationLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configureCell(theDate date: String, theShift shift: Int, theDurationOfWork duration: String, anyComments comments: String) {
        shiftLbl.text = String(shift)
        dateLbl.text = date
        durationLbl.text = duration
        commentsLbl.text = comments
    }
}
