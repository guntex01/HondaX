//
//   Motorcycle.swift
//  HondaX
//
//  Created by guntex01 on 6/11/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import Foundation
import UIKit
//struct Motorcycle {
//    let imageMoto: String
//    let textLB: String
//}
struct Gallery {
    var sectionXemay: String
    var motoImages: [Photo]
    
}

struct Photo {
    var image: UIImage
    var text: String
    var isSelect: Bool
   }
func fakeData() -> [Gallery] {
return [
    Gallery(sectionXemay: "Xe máy", motoImages: [
        Photo(image: UIImage(named: "xeso")!, text: "xe số", isSelect: false),
        Photo(image: UIImage(named: "xetayga")!, text: "xe tay ga", isSelect: false),
        Photo(image: UIImage(named: "xecontay")!, text: "xe côn tay", isSelect: false),
        Photo(image: UIImage(named: "xemoto")!, text: "xe Moto", isSelect: false),
    ])
        ]
}
