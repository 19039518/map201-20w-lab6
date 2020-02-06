//
//  PhotoDataSource .swift
//  SooGreyhoundsMobile
//
//  Created by Sandeep Kaur on 2020-02-06.
//  Copyright © 2020 sandeep kaur. All rights reserved.
//
import UIKit
class PhotoDataSource: NSObject,UICollectionViewDataSource {
    var photos = [Photo]()
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "UICollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for:
            indexPath)
        return cell
    }
}
