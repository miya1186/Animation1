//
//  ViewController.swift
//  Animation1
//
//  Created by miyazawaryohei on 2020/10/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        let tapPoint = sender.location(in: view)
        
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       options: [.curveEaseInOut],
                       animations: {
                        self.image.center = tapPoint
                       },
                       completion: nil)
    }
    
}

