//
//  ViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func goNext(_ sender: Any) {
        let nextView = LabelImageViewController()
        self.navigationController?.pushViewController(nextView, animated: true)
//        self.present(nextView, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

