//
//  Scroll3ViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/09.
//

import UIKit

class Scroll3ViewController: UIViewController {
    var scrollView: UIScrollView!
    var scrollContentsView: UIStackView!
    var page1View: UIView!
    var page2View: UIView!
    
//    override func loadView() {
        
        
//        
//        scrollView = UIScrollView()
//        scrollView.isPagingEnabled = true
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(scrollView)
//        
//        scrollContentsView = UIStackView()
//        scrollContentsView.axis = .vertical
//        scrollContentsView.alignment = .fill
//        scrollContentsView.distribution = .fill
//        scrollContentsView.spacing = 0
//        scrollContentsView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.addSubview(scrollContentsView)
//        
//        page1View = UIView()
//        page1View.backgroundColor = .green
//        page1View.translatesAutoresizingMaskIntoConstraints = false
//        scrollContentsView.addArrangedSubview(page1View)
//        
//        page2View = UIView()
//        page2View.backgroundColor = .orange
//        page2View.translatesAutoresizingMaskIntoConstraints = false
//        scrollContentsView.addArrangedSubview(page2View)
//        
//        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            
//            scrollContentsView.topAnchor.constraint(equalTo: view.topAnchor),
//            scrollContentsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            scrollContentsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            scrollContentsView.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor),
//            scrollContentsView.widthAnchor.constraint(equalTo: scrollView.contentLayoutGuide.widthAnchor, multiplier: 1),
//            
//            page1View.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor, multiplier: 1),
//            page1View.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1),
//            
//            page2View.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor, multiplier: 1),
//            page2View.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1),
//        ])
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//                loadView()
//        self.view = UIView()
//        self.view.backgroundColor = .blue
        view.backgroundColor = .white
        scrollView = UIScrollView()
        let screenWidth = Int(UIScreen.main.bounds.size.width)
        let screenHeight = Int(UIScreen.main.bounds.size.height)
        
//        scrollView.frame = self.view.frame
//        scrollView.backgroundColor = .red
//        scrollView.contentSize = CGSize(width:screenWidth , height:screenHeight * 2)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        
        page1View = UIView()
        page1View.backgroundColor = .blue
        page1View.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(page1View)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            page1View.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            page1View.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            page1View.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            page1View.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            page1View.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1),
//            page1View.heightAnchor.constraint(equalToConstant: 2000)
            page1View.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2)
        ])

        
        
        

        
    }
    
    
    
}
