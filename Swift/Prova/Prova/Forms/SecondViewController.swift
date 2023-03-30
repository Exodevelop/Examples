//
//  SEcondViewController.swift
//  Prova
//
//  Created by Flavio Sinatra on 13/04/23.
//

import Cocoa
import SwiftUI

class SecondViewController: NSViewController {
    
    @IBOutlet weak var DismissButton: NSButton!
    
    @IBAction func OnDismissClick(_ sender: NSButton) {
        
        self.dismiss(NSViewController.self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
