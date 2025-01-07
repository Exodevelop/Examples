import Cocoa
import Foundation

// Definizione della classe User
class User {
    var firstName: String
    var lastName: String
    var age: Int

    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}





class ViewController: NSViewController {
    
    @IBOutlet weak var CreateUserbtn: NSButton!
    @IBOutlet weak var FnInput: NSTextField!
    @IBOutlet weak var LnInput: NSTextField!
    @IBOutlet weak var AgeInput: NSTextField!
    @IBOutlet weak var Content: NSTextField!
    @IBOutlet weak var WineskinDownloadbtn: NSButton!
    @IBOutlet weak var progressIndicator: NSProgressIndicator!
    
    @IBOutlet weak var containerView: NSView!
    
    @IBOutlet weak var combo: NSComboBoxCell!
    
    
    
    
    
    
    
    
    
    
    
    
    var users: [User] = [] // Lista generale di utenti
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Impostazione valori iniziali (opzionale)
        FnInput.placeholderString = "insert name"
        LnInput.placeholderString = "lsname"
        AgeInput.placeholderString = "age"
        containerView.wantsLayer = true
        containerView.layer?.backgroundColor = NSColor(calibratedRed: 98.0/255.0,
                                                       green: 43.0/255.0,
                                                       blue: 43.0/255.0,
                                                       alpha: 1.0).cgColor
    }
    
    @IBAction func CreateUserbtn(_ sender: Any) {
        // Raccogli i dati dagli input
        let fn = FnInput.stringValue
        let ln = LnInput.stringValue
        let age = Int(AgeInput.stringValue) ?? 0 // Gestisce conversioni fallite
        
        // Crea un nuovo utente
        let usr = User(firstName: fn, lastName: ln, age: age)
        
        // Aggiungi l'utente alla lista generale
        users.append(usr)
        
        // Mostra i dati combinati nella casella di testo in basso
        Content.stringValue = users.map { "\($0.firstName) \($0.lastName) \($0.age)" }.joined(separator: "\n")
    }
    
    @IBAction func Clearbtn(_ sender: Any) {
        // Pulisci i campi di input
        FnInput.stringValue = ""
        LnInput.stringValue = ""
        AgeInput.stringValue = "0"
    }
    
    @IBAction func DeleteLastbtn(_ sender: Any) {
        // Rimuovi l'ultimo utente dalla lista generale
        users.popLast()
        
        // Mostra i dati combinati nella casella di testo in basso
        Content.stringValue = users.map { "\($0.firstName) \($0.lastName) \($0.age)" }.joined(separator: "\n")
    }
    
    @IBAction func WineskinDownloadbtn(_ sender: Any) {
        // Scarica Wineskin
        let url = URL(string: "https://images.dwncdn.net/images/t_app-icon-l/p/9fe7d6dc-9b32-11e6-b0a2-00163ed833e7/3332472099/2121_4-75362648-logo")!
        let downloader = FileDownloader()

        downloader.onProgressUpdate = { progress in
            print("Progresso: \(progress * 100)%")
            
        }

        downloader.onDownloadComplete = { location, error in
            if let error = error {
                print("Errore durante il download: \(error.localizedDescription)")
            } else if let location = location {
                print("Download completato, file salvato in: \(location.path)")
            }
        }

        let fileURL = "https://images.dwncdn.net/images/t_app-icon-l/p/9fe7d6dc-9b32-11e6-b0a2-00163ed833e7/3332472099/2121_4-75362648-logo"
        downloader.downloadFile(from: fileURL)

        
    }
    
    
}
