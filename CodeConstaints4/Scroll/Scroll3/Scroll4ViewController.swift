//
//  Scroll3ViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/09.
//

import UIKit

class Scroll4ViewController: UIViewController {
//    var scrollView: UIScrollView!
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
    var scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//                loadView()
//        self.view = UIView()
//        self.view.backgroundColor = .blue
//
//        let viewX = self.view.frame.width
//        let viewY = self.view.frame.height
//        scrollView.frame = CGRect(x:0, y:0, width:viewX , height:viewY/2)
//        scrollView.backgroundColor = UIColor.red
//        scrollView.contentSize = CGSize(width:viewX * 2 , height:viewY/2)
//        self.view.addSubview(scrollView)
        
        //スクリーンの幅
        let screenWidth = Int( UIScreen.main.bounds.size.width)
        //スクリーンの高さ
        let screenHeight = Int(UIScreen.main.bounds.size.height)
        //UIScrollViewのインスタンス作成
        let scrollView = UIScrollView()
        //scrollViewの大きさを設定
        scrollView.frame = self.view.frame
        //スクロール領域の設定
        scrollView.contentSize = CGSize(width:screenWidth, height:screenHeight)
        //scrollViewをviewのSubViewとして追加
        self.view.addSubview(scrollView)
        //表示ラベル
        let sideMenuLabel = UILabel(frame: CGRect(x:0, y:0, width:screenWidth, height:320))
        //表示可能最大行数を指定
        sideMenuLabel.numberOfLines = 0
        sideMenuLabel.font = sideMenuLabel.font.withSize(9)
        sideMenuLabel.text = "テストで表示"
        scrollView.addSubview(sideMenuLabel)
        
    }
    
    
    
}
