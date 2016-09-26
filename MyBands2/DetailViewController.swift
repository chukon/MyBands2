//
//  DetailViewController.swift
//  MyBands2
//
//  Created by cis290 on 9/26/16.
//  Copyright © 2016 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //@IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var productImageView: UIImageView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
           // self.configureView()
        }
    }
    
    var productName: String? {
        didSet {
            
        }
    }
    
    //4) Add didSet for productURL
    var productURL: NSString? {
        didSet {
            // Update the view.
            // self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        // Update image if detailItem has been passed a value from MasterViewController Seque
        if let detail: AnyObject = self.detailItem {
            productImageView.image = UIImage(named:productURL! as String)
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        // Do any additional setup after loading the view, typically from a nib.
        print("Product URL: \(productURL)")
        print("Product Name: \(productName)")
        if productName == nil
        {
            productImageView.image = UIImage(named:"Main.png")
        }
        title = productName
        self.configureView()    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

