//
//  Photo.swift
//  SooGreyhoundsMobile
//
//  Created by Sandeep Kaur on 2020-01-30.
//  Copyright © 2020 sandeep kaur. All rights reserved.
//

import Foundation
class Photo {
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
}
