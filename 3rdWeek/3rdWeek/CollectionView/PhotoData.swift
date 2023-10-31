//
//  PhotoData.swift
//  3rdWeek
//
//  Created by 신지원 on 10/28/23.
//

import Foundation

struct ImageCollectionData {
    let image: String
    var isLiked: Bool
    
    init(image: String, isLiked: Bool) {
        self.image = image
        self.isLiked = isLiked
    }
}

var imageCollectionList: [ImageCollectionData] = [.init(image: "photo1", isLiked: true),
                                                  .init(image: "photo2", isLiked: true),
                                                  .init(image: "photo3", isLiked: false),
                                                  .init(image: "photo4", isLiked: false),
                                                  .init(image: "photo5", isLiked: true),
                                                  .init(image: "photo6", isLiked: false),
                                                  .init(image: "photo7", isLiked: true),
                                                  .init(image: "photo8", isLiked: false),
                                                  .init(image: "photo1", isLiked: false),
                                                  .init(image: "photo2", isLiked: false),
                                                  .init(image: "photo3", isLiked: true),
                                                  .init(image: "photo4", isLiked: false),
                                                  .init(image: "photo5", isLiked: true),
                                                  .init(image: "photo6", isLiked: true),
                                                  .init(image: "photo7", isLiked: false),
                                                  .init(image: "photo8", isLiked: false),
                                                  .init(image: "photo1", isLiked: false),
                                                  .init(image: "photo2", isLiked: false),
                                                  .init(image: "photo3", isLiked: false),
                                                  .init(image: "photo4", isLiked: false),
                                                  .init(image: "photo5", isLiked: false),
                                                  .init(image: "photo6", isLiked: false),
                                                  .init(image: "photo7", isLiked: false),
                                                  .init(image: "photo8", isLiked: false),
                                                  .init(image: "photo1", isLiked: true),
                                                  .init(image: "photo2", isLiked: true),
                                                  .init(image: "photo3", isLiked: false),
                                                  .init(image: "photo4", isLiked: false),
                                                  .init(image: "photo5", isLiked: false),
                                                  .init(image: "photo6", isLiked: false),
                                                  .init(image: "photo7", isLiked: false),
                                                  .init(image: "photo8", isLiked: false),
                                                  .init(image: "photo1", isLiked: true),
                                                  .init(image: "photo2", isLiked: false),
                                                  .init(image: "photo3", isLiked: false),
                                                  .init(image: "photo4", isLiked: true),
                                                  .init(image: "photo5", isLiked: false),
                                                  .init(image: "photo6", isLiked: false),
                                                  .init(image: "photo7", isLiked: true),
                                                  .init(image: "photo8", isLiked: true)]
