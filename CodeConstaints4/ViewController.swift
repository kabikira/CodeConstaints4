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
    
    @IBAction func goScroll3(_ sender: Any) {
        self.navigationController?.pushViewController(Scroll3ViewController(), animated: true)
    }
    @IBAction func goScroll4(_ sender: Any) {
        self.navigationController?.pushViewController(Scroll4ViewController(), animated: true)
    }
    
    @IBAction func goStack1(_ sender: Any) {
        self.navigationController?.pushViewController(Stack1ViewController(), animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

