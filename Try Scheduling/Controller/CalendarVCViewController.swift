//
//  CalendarVCViewController.swift
//  Try Scheduling
//
//  Created by Oforkanji Odekpe on 9/8/18.
//  Copyright © 2018 Oforkanji Odekpe. All rights reserved.
//

import UIKit
import CVCalendar

@IBDesignable

class CalendarVCViewController: UIViewController {

    var menuView: CVCalendarMenuView!
    var calendarView: CVCalendarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // CVCalendarMenuView initialization with frame
        self.menuView = CVCalendarMenuView(frame: CGRect(x:0, y:80, width: 300, height: 15))
        
        // CVCalendarView initialization with frame
        self.calendarView = CVCalendarView(frame: CGRect(x:self.view.bounds.width / 2 - self.menuView.bounds.width / 2, y:100, width: 300, height: 450))
        
        // Appearance delegate
        self.calendarView.calendarAppearanceDelegate = self
        
        // Animator delegate
        self.calendarView.animatorDelegate = self
        
        // Menu delegate
        self.menuView.menuViewDelegate = self
        
        // Calendar delegate
        self.calendarView.calendarDelegate = self
        
        self.view.addSubview(menuView)
        self.view.addSubview(calendarView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        menuView.commitMenuViewUpdate()
        calendarView.commitCalendarViewUpdate()
    }

}

extension CalendarVCViewController: CVCalendarViewAppearanceDelegate, CVCalendarViewDelegate {
    
    func presentationMode() -> CalendarMode {
        return .monthView
    }
    
    func firstWeekday() -> Weekday {
        return .sunday
    }
    
    func spaceBetweenWeekViews() -> CGFloat {
        return 2.0
    }
    
    func spaceBetweenDayViews() -> CGFloat {
        return 2.0
    }
}
