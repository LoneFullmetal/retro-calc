//
//  StartScreenViewController.swift
//  retro-calc
//
//  Created by MSU on 4/8/16.
//  Copyright © 2016 cai21. All rights reserved.
//

import UIKit

class StartScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let seconds = 5.0
        let delay = seconds * Double(NSEC_PER_SEC)
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW,Int64(delay))
        dispatch_after(dispatchTime,dispatch_get_main_queue(), {
            let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let nextViewController = storyboard.instantiateViewControllerWithIdentifier("Calculator") as! ViewController
            self.presentViewController(nextViewController, animated: true, completion: nil)
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
