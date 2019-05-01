//
//  EquipmentHomeController.swift
//  SkiClock
//
//  Created by Ian Sime on 3/7/19.
//  Copyright © 2019 Ian Sime. All rights reserved.
//

import UIKit

class EquipmentHomeController: UIViewController {
    var store_id: Int!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "equipmentHomeToAllSkis"{
            let nextScene = segue.destination as? AllSkisListController
            nextScene!.store_id = store_id
            
        }
        if segue.identifier == "equipmentHomeToSkisIn"{
            let nextScene = segue.destination as? EquipmentListController
            nextScene!.store_id = store_id
        }
        if segue.identifier == "equipmentHomeToSkisOut"{
            let nextScene = segue.destination as? SkisOutController
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
