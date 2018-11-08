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
    var movieName: String
    var content: String?
    var youtubeId: String?
}

class LibraryData: NSObject {
    open class func getLibraryDataList() -> [POIData] {
        return [
            POIData(
                imageURL: "RalphBreaks",
                movieName: "Ralph Breaks",
                content: "Ralph Breaks the Internet is an upcoming American 3D computer-animated comedy film produced by Walt Disney Animation Studios and distributed by Walt Disney Pictures.",
                youtubeId: "T73h5bmD8Dc"
            ),
            POIData(
                imageURL: "BigHero",
                movieName: "Big Hero",
                content: "Big Hero 6 is a 2014 American 3D computer-animated superhero film produced by Walt Disney Animation Studios and released by Walt Disney Pictures.",
                youtubeId: "OvgyXKDXdZY"
            ),
            POIData(
                imageURL: "brave",
                movieName: "Brave",
                content: "Brave is a 2012 American computer-animated fantasy drama adventure film produced by Pixar Animation Studios and released by Walt Disney Pictures.",
                youtubeId: "7UrmeSqcUyA"
            ),
            POIData(
                imageURL: "coco",
                movieName: "CoCo",
                content: "Coco is a 2017 American 3D computer-animated fantasy film produced by Pixar Animation Studios and released by Walt Disney Pictures. Based on an original idea by Lee Unkrich, it is directed by him and co-directed by Adrian Molina.",
                youtubeId: "Rvr68u6k5sI"
            ),
            POIData(
                imageURL: "disneyposter53",
                movieName: "Frozen",
                content: "The company was founded on October 16, 1923 by brothers Walt and Roy O. Disney as the Disney Brothers Cartoon Studio; it also operated under the names The Walt Disney Studio and Walt Disney Productions before officially changing its name to The Walt Disney Company in 1986. ",
                youtubeId: "TbQm5doF_Uc"
            ),
            POIData(
                imageURL: "incredible",
                movieName: "Incredibles",
                content: "The Incredibles is a 2004 American computer-animated superhero film written and directed by Brad Bird, produced by Pixar Animation Studios, released by Walt Disney Pictures, and starring the voices of Craig T. Nelson, Holly Hunter, Sarah Vowell, Spencer Fox, Jason Lee, Samuel L. Jackson, and Elizabeth Peña. ",
                youtubeId: "ZJDMWVZta3M"
            ),
            POIData(
                imageURL: "mickey",
                movieName: "Mickey Mouse",
                content: "Mickey Mouse is a funny animal cartoon character and the mascot of The Walt Disney Company. He was created by Walt Disney and Ub Iwerks at the Walt Disney Studios in 1928. An anthropomorphic mouse who typically wears red shorts, large yellow shoes, and white gloves, Mickey is one of the world's most recognizable characters.",
                youtubeId: "WSaBvnKIPvM"
            )
        ]
    }
}
