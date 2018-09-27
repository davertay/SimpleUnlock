//
//  ViewController.swift
//  SimpleUnlock
//
//  Created by Patricia Joseph on 9/26/18.
//  Copyright © 2018 Patricia Joseph. All rights reserved.
//
import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var unlockButton: NSButton!
    @IBOutlet weak var unlockBox: NSTextField!
    @IBOutlet weak var unlockLabel: NSTextField!

    private var unlockCodes : [String] = ["A1-B2-C3", "D2-E3-F4", "X1-Y2-Z3"]

    override func viewDidLoad () {
        super.viewDidLoad()
        //
    }

    private func unlockApp() {
        for unlockCode :String in unlockCodes {
            if unlockBox.stringValue == unlockCode {
                unlockBox.isEnabled = false
                unlockLabel.stringValue = "UnLocked!"
                return
            }
        }
        let alert = NSAlert ()
        alert.messageText = "invalid Code"
        alert.informativeText = "The unlock code you supplied is invalid"
        alert.addButton(withTitle:"Okay")
        alert.runModal()
    }

    @IBAction func unlockButtonClicked(_ sender: Any) {
        unlockApp()
    }

    override var representedObject: Any? {
        didSet {
            //update the view if already loaded
        }

    }
}

