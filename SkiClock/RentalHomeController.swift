//
//  RentalHomeController.swift
//  SkiClock
//
//  Created by Ian Sime on 3/18/19.
//  Copyright © 2019 Ian Sime. All rights reserved.
//

import UIKit

class RentalHomeController: UIViewController {

    var store_id: Int!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rentalsHomeToReturnSearch"{
            let nextScene = segue.destination as? ReturnsHomeController
            nextScene!.store_id = store_id
        }
        if segue.identifier == "rentalsHomeToOverDueReturns"{
            let nextScene = segue.destination as? OverdueReturnsListController
            nextScene!.store_id = store_id
        }
        if segue.identifier == "rentalsHomeToTodaysReturns"{
            let nextScene = segue.destination as? TodaysReturnsListController
            nextScene!.store_id = store_id
        }
        if segue.identifier == "rentalsHomeToTomorrowsReturns"{
            let nextScene = segue.destination as? TomorrowsReturnsListController
            nextScene!.store_id = store_id
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
