//
//  SomeItem.swift
//  CollectionKitDemo
//
//  Created by xinyi on 2018/4/20.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class SomeItemView: UIView {
    
    //我关注的人的数量
    @IBOutlet var contentView: UIView!
    
    @IBOutlet var marks: UILabel!
    @IBOutlet var myRoomButton: UIButton!
    @IBOutlet var myMarks: UIButton!
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 64))
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("SomeItem", owner: self, options: nil)
        self.addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        myRoomButton.clipsToBounds = true
        myRoomButton.layer.cornerRadius = 4
        myRoomButton.backgroundColor = UIColor.cyan
        
    }

}
