//
//  UIBarButtonItem-Extension.swift
//  QDZX
//
//  Created by zhanghy on 2018/7/10.
//  Copyright © 2018年 Tusstar. All rights reserved.
//

import UIKit

extension UIBarButtonItem{

    
    
    //用拓展类的方法 定义快速添加UIButton
    /*
    class func createItem(imageName : String , highImageName : String , size : CGSize) -> UIBarButtonItem{
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        return UIBarButtonItem(customView: btn)
    }
    */
    
    
    
    //便利构造函数:1>chicksearch开头  2>在构造函数中必须明确调用一个设计的构造函数(self)
    //对系统内扩充构造函数，只能扩充便利构造函数
    convenience init(imageName : String,highImageName : String,size : CGSize) {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        
        self.init(customView : btn)
    }
    
    
}
