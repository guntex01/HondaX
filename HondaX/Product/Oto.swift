//
//  Oto.swift
//  HondaX
//
//  Created by guntex01 on 6/11/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import Foundation
import UIKit
//struct OtoHonda {
//    let imageOto: String
//    let textLB: String
//}
struct abc {
    var sectionOto: String
    var otoImages: [Oto]
    
}

struct Oto {
    var image: UIImage
    var text: String
    var isSelect: Bool
   }
func fakeData1() -> [abc] {
return [
    abc(sectionOto: "Ô tô", otoImages: [
        Oto(image: UIImage(named: "briohonda")!, text: "Brio", isSelect: false),
        Oto(image: UIImage(named: "cityBlack")!, text: "City", isSelect: false),
        Oto(image: UIImage(named: "civichonda")!, text: "Civic", isSelect: false),
        Oto(image: UIImage(named: "HR-V")!, text: "HR-V", isSelect: false),
        Oto(image: UIImage(named: "CRV")!, text: "CR-V", isSelect: false),
        Oto(image: UIImage(named: "accord")!, text: "Accord", isSelect: false),
    ])
        ]
}

