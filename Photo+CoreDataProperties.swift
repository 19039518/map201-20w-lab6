//
//  Photo+CoreDataProperties.swift
//  SooGreyhoundsMobile
//
//  Created by Sandeep Kaur on 2020-02-13.
//  Copyright © 2020 sandeep kaur. All rights reserved.
//
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo")
    }

    @NSManaged public var dateTaken: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var remoteURL: NSURL?
    @NSManaged public var photoID: String?

}
