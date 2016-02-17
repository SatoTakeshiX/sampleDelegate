//
//  ViewController.swift
//  SampleDelegation
//
//  Created by satoutakeshi on 2016/02/17.
//  Copyright © 2016年 satoutakeshi. All rights reserved.
//

import UIKit
//ActionDelegationを採用する
class ViewController: UIViewController, ActionDelegation {

    //アクションビュー
    @IBOutlet weak var actionView: ActionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //デリゲーションを指定
        actionView.delegation = self
    }

    //アクションビューをタップした時に呼ばれるデリゲートメソッド
    //必ず実装する
    func didTapped(view: UIView) {
        print("didTapped View'frame is : \(view.frame)")
        
    }
    
    
    //アクションビューをムーブした時に呼ばれるデリゲートメソッド
    //オプションなので必ずしも実装しなくてもよい
    func didMoved(view: UIView) {
        
        print("didMoved View'frame is  : \(view.frame)")
        
    }
}

