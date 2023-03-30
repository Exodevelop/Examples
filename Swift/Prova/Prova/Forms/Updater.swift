//
//  Updater.swift
//  Prova
//
//  Created by Flavio Sinatra on 14/04/23.
//

import Cocoa
import SwiftUI




class Updater: NSViewController {
    
    
   
    // UI Elements OUTLETS
    @IBOutlet weak var CloseUpdater: NSButton!
    @IBOutlet weak var CheckUpdtButton: NSButton!
    @IBOutlet weak var UpdatePI: NSProgressIndicator!
    
    @IBOutlet weak var Installbtn: NSButton!
    @IBOutlet weak var NSSpinnerUpdt: NSProgressIndicator!
    @IBOutlet weak var UpdateAvaibleLabel: NSTextField!
    @IBOutlet weak var ActualVersionLabel: NSTextField!
    @IBOutlet weak var LatestAvaibleVersionLabel: NSTextField!
    
    func closebutton (_ sender: NSViewController)
    {
        
    }
    
    // UI Custom Functions
    
    func startPIanim (_sender: NSProgressIndicator)
    {
        UpdatePI.startAnimation(NSProgressIndicator.self)
    }
    
    func startSanim (_sender: NSProgressIndicator)
    {
        NSSpinnerUpdt.startAnimation(NSProgressIndicator.self)
    }

    func stopSanim (_sender: NSProgressIndicator)
    {
        NSSpinnerUpdt.stopAnimation(NSProgressIndicator.self)
    }
    
    @IBAction func OnInstClick(_ sender: Any) {
        
        let seconds = 1.5
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            self.UpdatePI.doubleValue = 20
            
            let seconds = 1.5
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                self.UpdatePI.doubleValue = 40
                let seconds = 1.5
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    self.UpdatePI.doubleValue = 60
                    let seconds = 1.5
                    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                        self.UpdatePI.doubleValue = 100
                    }
                }
            }
        }
        
    }
    
    
    // UI Elements ACTIONS
    @IBAction func DismissUpdater(_ sender: Any) {
        self.dismiss(NSViewController.self)}
    
    
    
    @IBAction func OnUpdtClick(_ sender: NSButton)
        {
            startPIanim(_sender: UpdatePI)
            startSanim(_sender: NSSpinnerUpdt)
            NSSpinnerUpdt.isHidden = false
            
            let seconds = 4.0
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                // Put your code which should be executed with a delay here
                self.LatestAvaibleVersionLabel.stringValue = "2"
                self.UpdatePI.doubleValue = 50
                let seconds = 4.0
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    // Put your code which should be executed with a delay here
                    if (self.ActualVersionLabel.stringValue == self.LatestAvaibleVersionLabel.stringValue)
                    {
                        self.UpdateAvaibleLabel.stringValue = "Nessun Aggiornamento disponibile !"
                        self.UpdateAvaibleLabel.isHidden = false
                        self.Installbtn.isHidden = false
                        self.UpdatePI.doubleValue = 100
                        let seconds = 1.5
                        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                            self.stopSanim(_sender: self.NSSpinnerUpdt)
                            self.NSSpinnerUpdt.isHidden = true
                        }
                        
                    }
                    else
                    {
                        
                        
                        self.UpdateAvaibleLabel.stringValue = "Aggiornamento Disponibile"
                        self.UpdateAvaibleLabel.isHidden = false
                        self.Installbtn.isHidden = false
                        self.UpdatePI.doubleValue = 100
                        let seconds1 = 1.5
                        DispatchQueue.main.asyncAfter(deadline: .now() + seconds1) {
                            self.UpdateAvaibleLabel.stringValue = "Installo..."
                        }
                    
                        let seconds = 1.5
                        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                            self.stopSanim(_sender: self.NSSpinnerUpdt)
                            self.NSSpinnerUpdt.isHidden = true
                            
                            let seconds = 1.5
                            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                self.UpdatePI.doubleValue = 20
                                
                                let seconds = 1.5
                                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                    self.UpdatePI.doubleValue = 40
                                    let seconds = 1.5
                                    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                        self.UpdatePI.doubleValue = 60
                                        let seconds = 1.5
                                        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                            self.UpdatePI.doubleValue = 100
                                            let seconds1 = 1.5
                                            DispatchQueue.main.asyncAfter(deadline: .now() + seconds1) {
                                                self.UpdateAvaibleLabel.stringValue = "Aggiornamento Installato!"
                                                self.UpdatePI.doubleValue = 0
                                                let seconds1 = 2.5
                                                DispatchQueue.main.asyncAfter(deadline: .now() + seconds1) {
                                                    self.UpdateAvaibleLabel.isHidden = true
                                                    self.UpdatePI.doubleValue = 0
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                                            
                        }
                    }
                }
            }
    }

    // View Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
