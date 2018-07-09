//
//  HomeViewController.swift
//  QDZX
//
//  Created by zhanghy on 2018/7/10.
//  Copyright © 2018年 Tusstar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //设置UI界面
  setuiUI()
        
    }


}

//MARK:-设置UI界面
extension HomeViewController{
    private func setuiUI() {
    //1.设置导航栏
    setupNavigationBar()
    }
    
    private func setupNavigationBar(){
        
        let btn = UIButton()
        btn.setImage(UIImage(named: "tusstarLogo"), for: .normal)
        
        //根据图标大小自适应
        btn.sizeToFit()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
        
        //2.设置右侧的Item
        
        
        let size = CGSize(width: 30, height: 30)
       
        
        //采用Tools 便利构造函数
        let historyItem = UIBarButtonItem(imageName: "history", highImageName: "chickhistory", size: size)
        let searchItem = UIBarButtonItem(imageName: "search", highImageName: "chicksearch", size: size)
        let qrCodeItem = UIBarButtonItem(imageName: "qrCode", highImageName: "chickqrCode", size: size)
        
        
        /*原始写法
        let historyBtn = UIButton()
        historyBtn.setImage(UIImage(named: "history"), for: .normal)
        historyBtn.setImage(UIImage(named: "chickhistory"), for: .highlighted)
        historyBtn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        let historyItem = UIBarButtonItem(customView: historyBtn)
        
        
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage(named: "search"), for: .normal)
        searchBtn.setImage(UIImage(named: "chicksearch"), for: .highlighted)
        searchBtn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        let searchItem = UIBarButtonItem(customView: searchBtn)
        
        
        let qrCodeBtn = UIButton()
        qrCodeBtn.setImage(UIImage(named: "qrCode"), for: .normal)
        qrCodeBtn.setImage(UIImage(named: "chickqrCode"), for: .highlighted)
        qrCodeBtn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        let qrCode = UIBarButtonItem(customView: qrCodeBtn)
 
        */
        
        
        //创建右侧按钮集                        数组
        navigationItem.rightBarButtonItems = [qrCodeItem,historyItem,searchItem]
        
    }
        
}
