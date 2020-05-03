//
//  ViewController.swift
//  hustle-mode
//
//  Created by JavadFaghih on 2/14/1399 AP.
//  Copyright © 1399 AP JavadFaghih. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var onBTN: UIButton!
    @IBOutlet weak var cloudViewHolder: UIView!
    @IBOutlet weak var hustleLBL: UILabel!
    @IBOutlet weak var onLBL: UILabel!
    @IBOutlet weak var rocket: UIImageView!
    
    var player = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    
       let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
       let url = URL(fileURLWithPath: path)
       do {
       player = try AVAudioPlayer(contentsOf: url)
           player.prepareToPlay()
       }
       catch {
           //
       }
        

    }

    @IBAction func onBTNPressed(_ sender: UIButton) {
      
        
        
        player.play()
        cloudViewHolder.isHidden = false
        darkBlueBG.isHidden = true
        onBTN.isHidden = true
        
        
        
        UIView.animate(withDuration: 3.2, animations: {
            self.rocket.frame = CGRect(x: 0, y: 40, width: 414, height: 476)
        }) { (finished) in
            self.onLBL.isHidden = false
            self.hustleLBL.isHidden = false
        }

    }
    @IBAction func returnBTNPressed(_ sender: Any) {

        onBTN.isHidden = false
        darkBlueBG.isHidden = false
        cloudViewHolder.isHidden = true

        
        UIView.animate(withDuration: 1.0, animations: {
                  self.rocket.frame = CGRect(x: 0, y: 400, width: 414, height: 476)
              }) { (finished) in
                  self.onLBL.isHidden = true
                  self.hustleLBL.isHidden = true
              }
    }
}

