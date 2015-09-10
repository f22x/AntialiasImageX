//
//  File.swift
//  AntialiasImage
//
//  Created by xinglei on 15/9/10.
//  Copyright © 2015年 Zplay. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    func antialiasImage() ->UIImage {
//        边界距离
        let border: CGFloat = 1.0
//        比原图小1px的图
        let rect: CGRect = CGRectMake(border, border, size.width-2*border, size.height-2*border)
//        原图
        var img = UIImage()
//        创造一个小1px的环境
        UIGraphicsBeginImageContext(CGSizeMake(rect.size.width, rect.size.height))
//        但是画的时候是原图的范围
        self.drawInRect(CGRectMake(-1, -1, size.width, size.height))
//        构建原图
        img = UIGraphicsGetImageFromCurrentImageContext()
//        终止画
        UIGraphicsEndImageContext()
//        依靠原图构建环境
        UIGraphicsBeginImageContext(size)
//        在原图的基础上画小1px的图
        img.drawInRect(rect)
//        构建小图
        let antialiasImage = UIGraphicsGetImageFromCurrentImageContext()
//        构建完关闭
        UIGraphicsEndImageContext()
//        返回这个小1px的图
        return antialiasImage;
    }
}