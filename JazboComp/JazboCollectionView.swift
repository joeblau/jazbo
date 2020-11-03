//
//  JazboCollectionView.swift
//  JazboComp
//
//  Created by Joe Blau on 11/2/20.
//

import UIKit


enum SectionLayoutKind: Int {
    case grid
    case list
}


class JazboCollectionView: UICollectionView {
    init() {
        
        let layout = UICollectionViewCompositionalLayout { (sectionIndex: Int, layoutEnv: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            guard let sectionLayoutKind = SectionLayoutKind(rawValue: sectionIndex) else { return nil }

                
            switch sectionLayoutKind {
            case .grid:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                      heightDimension: .fractionalHeight(1.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 1, bottom: 1, trailing: 1)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95),
                                                       heightDimension: .fractionalWidth(0.7))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                               subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                
                return section
            case .list:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                      heightDimension: .fractionalWidth(1.0))
                    
                let groupSize = itemSize
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                               subitem: item,
                                                               count:1)
                group.interItemSpacing = .fixed(10)

                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 5
                section.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                leading: 5,
                                                                bottom: 5,
                                                                trailing: 5)
                return section
            }
        }

        
        
        
        super.init(frame: .zero, collectionViewLayout: layout)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBackground
        register(JazboCollectionViewCell.self, forCellWithReuseIdentifier: JazboCollectionViewCell.id)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
