//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 鶴岡慧 on 2020/10/18.
//  Copyright © 2020 kei.tsuruoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var imagenumber = 1
    
    var timer: Timer!
    
    @IBAction func move(_ sender: Any) {
        if imagenumber == 1 {
            imageView.image = UIImage(named: "002.jpeg")
            imagenumber = 2
        }
        else if imagenumber == 2 {
            imageView.image = UIImage(named: "003.jpeg")
            imagenumber = 3
        }
        else if imagenumber == 3 {
            imageView.image = UIImage(named: "001.png")
            imagenumber = 1
        }
    }
    @IBAction func unwind(_ sender: UIStoryboardSegue) {
    }
    @IBAction func back(_ sender: Any) {
        
        if imagenumber == 1 {
            imageView.image = UIImage(named: "003.jpeg")
            imagenumber = 2
        }
        else if imagenumber == 2 {
            imageView.image = UIImage(named: "002.jpeg")
            imagenumber = 3
        }
        else if imagenumber == 3 {
            imageView.image = UIImage(named: "001.png")
            imagenumber = 1
        }
    }
    
    @IBOutlet weak var backbottan: UIButton!
    @IBOutlet weak var movebottan: UIButton!
    @IBOutlet weak var playbottan: UIButton!
    @IBAction func play(_ sender: Any) {
        
        
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            
            playbottan.setTitle("停止", for: .normal)
            
            movebottan.isEnabled = false
            
            backbottan.isEnabled = false
            
            
            
        } else {
            self.timer.invalidate()
            self.timer = nil
            playbottan.setTitle("再生", for: .normal)
            
            movebottan.isEnabled = true
            
            backbottan.isEnabled = true
        }
    }
    
    
    
    
    
    @objc func updateTimer(_ timer: Timer) {
        if imagenumber == 1 {
            imageView.image = UIImage(named: "002.jpeg")
            imagenumber = 2
        }
        else if imagenumber == 2 {
            imageView.image = UIImage(named: "003.jpeg")
            imagenumber = 3
        }
        else if imagenumber == 3 {
            imageView.image = UIImage(named: "001.png")
            imagenumber = 1
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        let resultViewController:RsultViewController = segue.destination as! RsultViewController
        
        resultViewController.imagenumber = imagenumber
        
        if timer != nil {
            
            if self.timer == nil {
                self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
                
                playbottan.setTitle("停止", for: .normal)
                
                movebottan.isEnabled = false
                
                backbottan.isEnabled = false
                
                
                
            } else {
                self.timer.invalidate()
                self.timer = nil
                playbottan.setTitle("再生", for: .normal)
                
                movebottan.isEnabled = true
                
                backbottan.isEnabled = true
            }
        }
        // 停止ボタンと同じ処理
        
    }
    
    
    
    
    
}



