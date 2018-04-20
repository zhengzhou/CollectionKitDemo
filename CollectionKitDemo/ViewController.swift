//
//  ViewController.swift
//  CollectionKitDemo
//
//  Created by xinyi on 2018/4/20.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit
import CollectionKit

class ViewController: UIViewController {
    
    let collectionView = CollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(collectionView)
        let data: [Int] = [1,2,3,4,5,6,7,8,9,0]
        let provider = CollectionProvider(
            data: data,
            viewUpdater: { (v: SomeItemView, data: Int, index: Int) in
                v.marks.text = "what??"
        },
            layout: FlowLayout(lineSpacing: 16, interitemSpacing: 16).inset(by: UIEdgeInsets(top: 8, left: 16, bottom: 4, right: 16)),
            sizeProvider: { (_, _, size) -> CGSize in
                return CGSize(width: size.width, height: 64)
        })
        
        collectionView.provider = provider
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

