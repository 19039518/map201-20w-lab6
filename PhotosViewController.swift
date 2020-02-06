//
//  PhotosViewController.swift
//  SooGreyhoundsMobile
//
//  Created by Sandeep Kaur on 2020-01-30.
//  Copyright © 2020 sandeep kaur. All rights reserved.
//

import UIKit
class PhotosViewController: UIViewController {
    
        @IBOutlet var collectionView: UICollectionView!
    var store: PhotoStore!
    let photoDataSource = PhotoDataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = photoDataSource
        store.fetchLatestPhotos () {
            (photosResult) -> Void in
            switch photosResult {
            case let .success(photos):
                print("Successfully found \(photos.count) photos.")
                self.photoDataSource.photos = photos
                
        case let .failure(error):
                print("Error fetching latest photos: \(error)")
                self.photoDataSource.photos.removeAll()
            }
            self.collectionView.reloadSections(IndexSet(integer: 0))
        }

    }
}

