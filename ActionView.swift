//
//  ActionView.swift
//  SampleDelegation
//
//  Created by satoutakeshi on 2016/02/17.
//  Copyright © 2016年 satoutakeshi. All rights reserved.
//

import UIKit

//プロトコルを宣言。
//作成しなくてもよいメソッド、プロパティは@objcをつけてメソッド、プロパティの前にoptionalをつける
@objc protocol ActionDelegation:class {
    
    //タップを検知する
    func didTapped (view : UIView)
    
    //ムーブを検知する
    optional func didMoved (view : UIView)
}



class ActionView: UIView {

    //ActionDelegationのインスタンスを宣言
    weak var delegation : ActionDelegation?
    
    //タップを検知するメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        
        self.delegation?.didTapped(self)
        
    }
    
    //ムーブを検知するメソッド
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.delegation?.didMoved?(self)
    }

}