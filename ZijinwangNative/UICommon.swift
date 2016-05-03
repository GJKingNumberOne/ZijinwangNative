//
//  UICommon.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/14.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

var ScreenWidth = UIScreen.mainScreen().bounds.width

var ScreenHeight = UIScreen.mainScreen().bounds.height

var ScreenScale = UIScreen.mainScreen().scale;

var px1 = 1 / ScreenScale

func rgba (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor { return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a) }

