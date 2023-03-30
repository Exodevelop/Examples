//
//  ViewController.swift
//  Chimica Saronio
//
//  Created by Flavio Sinatra on 22/04/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var icmbutton: UIButton!
    @IBOutlet weak var ccmbutton: UIButton!
    @IBOutlet weak var versionlabel: UILabel!
    @IBOutlet weak var vlabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.vlabel.text = "v"
        self.versionlabel.text = Bundle.main.releaseVersionNumber
        // Do any additional setup after loading the view.
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    
    
}
extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
