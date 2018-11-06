//
//  LibraryData.swift
//  DemoXCUITest
//
//  Created by Phineas on 2018/11/6.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

struct POIData {
    var imageURL: String?
}

class LibraryData: NSObject {
    open class func getLibraryDataList() -> [POIData] {
        return [
            POIData(
                imageURL: "RalphBreaks"
            ),
            POIData(
                imageURL: "BigHero"
            ),
            POIData(
                imageURL: "brave"
            ),
            POIData(
                imageURL: "coco"
            ),
            POIData(
                imageURL: "disneyposter53"
            ),
            POIData(
                imageURL: "incredible"
            ),
            POIData(
                imageURL: "mickey"
            )
        ]
    }
}
