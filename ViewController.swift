//
//  ViewController.swift
//  customMessage
//
//  Created by indianic on 15/09/17.
//  Copyright © 2017 indianic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //let myView = ToastMessageInView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "Welcome"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func btnPressHereAction(_ sender: UIButton) {
        
        let myView = AJNToastMessage()
        myView.MessageInTop(TextMessage: "Please enter valid E-mail address. Please enter valid E-mail address. Please enter valid E-mail address. Please enter valid E-mail address. Please enter valid E-mail address. Please enter valid E-mail address.", TextColor: UIColor.white, TextFont: UIFont.systemFont(ofSize: 14), IsViewCornerRadius: true, ControllerName: self, ViewColor: UIColor.blue)
        myView.slideViewInThenOut(from: .left, to: .right)
        //myView.fadeViewInThenOut()
        //myView.zoomInThenOut()
        //myView.popViewInThenOut()
    }
}

