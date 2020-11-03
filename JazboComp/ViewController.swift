//
//  ViewController.swift
//  JazboComp
//
//  Created by Joe Blau on 11/2/20.
//

import UIKit

class ViewController: UIViewController {

    lazy var jazboCollectionView: JazboCollectionView = {
        let v = JazboCollectionView()
        v.dataSource = self
        return v
    }()
    
    var photos = [[
        URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/622f0450469459.58d16c687f16f.jpg")!,
        URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/0d92e150469459.58d16c687f7cc.jpg")!,
        URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/e7afac50469459.58d16c687fbb8.jpg")!,
        ],
        [
            URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/d100f8105103961.5f71f755d4b7b.jpg")!,
            URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/ddb231105103961.5f71f7556c434.jpg")!,
            URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/136a9f105103961.5f71f754eab12.jpg")!,
            URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/ac88c5105103961.5f71f754eb4e4.jpg")!,
            URL(string: "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/9ce525105103961.5f71f755d5de2.jpg")!,
        ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Jazbo"
        view.backgroundColor = .systemBackground
        view.addSubview(jazboCollectionView)

        NSLayoutConstraint.activate([
            jazboCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            jazboCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            jazboCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            jazboCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
