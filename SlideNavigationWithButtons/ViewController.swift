//
//  ViewController.swift
//  SlideNavigationWithButtons



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl : UISegmentedControl!
    
    @IBOutlet weak var customHeader : UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        if let customView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as? CustomHeader {
            // Set your view here with instantiated customView
            print(customView)
        }
        
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }


}

