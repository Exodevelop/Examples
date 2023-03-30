//
//  Map.swift
//  Chimica Saronio
//
//  Created by Flavio Sinatra on 25/04/23.
//

import UIKit

class Map: UIViewController, UIScrollViewDelegate{

    
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var mapimage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.scrollview.delegate = self
        
        self.scrollview.maximumZoomScale = 6
        self.scrollview.minimumZoomScale = 1
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.mapimage
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
