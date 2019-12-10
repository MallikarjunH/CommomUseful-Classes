//
//  RoundingCornerRadious.swift
//  Test
//
//  Created by mallikarjun on 10/12/19.
//  Copyright © 2019 Mallikarjun H. All rights reserved.
//



//MARK: Rouding all corners of an UIView or UIImageView

self.viewOutlet.layer.cornerRadius = 5.0 //check


//MARK: Rouding specific corners of an UIView or UIImageView

extension UIView {
    
    func roundTop(radius:CGFloat = 5){
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
        if #available(iOS 11.0, *) {
            self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    
    func roundBottom(radius:CGFloat = 5){
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
        if #available(iOS 11.0, *) {
            self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
}


//How to use this extension:

mainBGView1.roundTop(radius: 5.0) //top corners(top left and top right corners)
mainBGView2.roundBottom(radius: 5.0) //bottom corners(bottom left and bottom right corners)


