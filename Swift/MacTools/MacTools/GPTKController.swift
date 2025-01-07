//
//  WineskinController.swift
//  MacTools
//
//  Created by Flavio Sinatra on 01/01/25.
//

import Foundation
import Cocoa


class GPTKController: NSViewController {
    
 
    
    @IBOutlet weak var Dwnbtn: NSButton!
   
    @IBOutlet weak var Pbar: NSProgressIndicator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
    }
    
    @IBAction func Downloadbtn(_ sender: Any) {
        let downloader = FileDownloader()
        downloader.onDownloadComplete = { [weak self] url, error in
            if let error = error {
                print("Download error: \(error)")
            } else if let url = url {
                print("Downloaded file: \(url)")
            }
        }
        downloader.onProgressUpdate = { [weak self] progress in
            self?.Pbar.doubleValue = progress
        }
        downloader.downloadFile(from: "https://images.dwncdn.net/images/t_app-icon-l/p/9fe7d6dc-9b32-11e6-b0a2-00163ed833e7/3332472099/2121_4-75362648-logo")
    }
    
    @IBAction func Addcombocontent (_ sender: Any) {
        
        
       
    }
    
    
}
