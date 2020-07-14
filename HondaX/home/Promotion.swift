//
//  Promotion.swift
//  HondaX
//
//  Created by guntex01 on 6/15/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import Foundation
import UIKit

struct Promotion{
    var sectionNews: String
    var NewsImages: [News]
    
}

struct News {
    var image: UIImage
    var text: String
    var isSelect: Bool
   }
func NewsData() -> [Promotion] {
return [
    Promotion(sectionNews: "Tin tức và Khuyến mãi", NewsImages: [
        News(image: UIImage(named: "tt1")!, text: "Honda Việt Nam tại VMS 2019", isSelect: false),
        News(image: UIImage(named: "tt2")!, text: "Honda Việt Nam khôi phục hoạt động sản xuất ô tô", isSelect: false),
        News(image: UIImage(named: "tt3")!, text: "Khuyến mãi đầy tay, sắm ngay winner mới", isSelect: false),
        
    ])
        ]
}
