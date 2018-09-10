//
//  ScheduleCell.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/9/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit

class ScheduleCell: UITableViewCell {

    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var commentsTxtView: UITextView!
    @IBOutlet weak var shiftLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(date: String, shift: Int, comments: String){
        dateLbl.text = date
        shiftLbl.text = String(shift)
        commentsTxtView.text = comments
    }

}
