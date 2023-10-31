//
//  File.swift
//  3rdWeek
//
//  Created by 신지원 on 10/28/23.
//

import Foundation

struct ItemListData {
    let image: String
    let item: String
    let location: String
    let price: String
    var isLike: Bool
    
    init(image: String, item: String, location: String, price: String, isLike: Bool) {
        self.image = image
        self.item = item
        self.location = location
        self.price = price
        self.isLike = isLike
    }
}

var itemListData: [ItemListData] = [.init(image: "image3",
                                          item: "귀여운 우리",
                                          location: "건대임용",
                                          price: "10,000,000,000원",
                                          isLike: false),
                                    .init(image: "image2",
                                          item: "풍선이 둥둥 떠다녀요",
                                          location: "솝트중임요 ><",
                                          price: "22,222원",
                                          isLike: false),
                                    .init(image: "image4",
                                          item: "제 곰돌이 보세요",
                                          location: "우리는 금잔디조",
                                          price: "120,000원",
                                          isLike: true),
                                    .init(image: "image1",
                                          item: "뽀짝한 김가현을 발견하셨는지 ?",
                                          location: "깜찍해요",
                                          price: "50,000원",
                                          isLike: true),
                                    .init(image: "image3",
                                          item: "귀여운 우리",
                                          location: "건대임용",
                                          price: "10,000,000,000원",
                                          isLike: false),
                                    .init(image: "image2",
                                          item: "풍선이 둥둥 떠다녀요",
                                          location: "솝트중임요 ><",
                                          price: "22,222원",
                                          isLike: false),
                                    .init(image: "image4",
                                          item: "제 곰돌이 보세요",
                                          location: "우리는 금잔디조",
                                          price: "120,000원",
                                          isLike: true),
                                    .init(image: "image1",
                                          item: "뽀짝한 권가현을 발견하셨는지 ?",
                                          location: "깜찍해요",
                                          price: "50,000원",
                                          isLike: true)]
