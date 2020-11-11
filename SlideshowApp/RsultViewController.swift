//
//  RsultViewController.swift
//  SlideshowApp
//
//  Created by 鶴岡慧 on 2020/10/21.
//  Copyright © 2020 kei.tsuruoka. All rights reserved.
//

import UIKit

class RsultViewController: UIViewController {
    
    @IBOutlet weak var nextimage: UIImageView!
    var imagenumber = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if imagenumber == 1 {
                 nextimage.image = UIImage(named: "001.png")
                 imagenumber = 2
             }
             else if imagenumber == 2 {
                 nextimage.image = UIImage(named: "002.jpeg")
                 imagenumber = 3
             }
             else if imagenumber == 3 {
                 nextimage.image = UIImage(named: "003.jpeg")
                 imagenumber = 1
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func unwind(_ sender: Any) {
    }
    
}
