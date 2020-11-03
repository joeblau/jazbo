//
//  ViewController+DataSource.swift
//  JazboComp
//
//  Created by Joe Blau on 11/2/20.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        photos.count
    }
    
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos[section].count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: JazboCollectionViewCell.id,
                                                            for: indexPath) as? JazboCollectionViewCell else {
            preconditionFailure("Could not dequeue cell")
        }
        cell.configure(image: photos[indexPath.section][indexPath.row])
        return cell
    }
}
