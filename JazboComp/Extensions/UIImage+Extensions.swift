//
//  UIImage+Extensions.swift
//  JazboComp
//
//  Created by Joe Blau on 11/2/20.
//

import UIKit

extension UIImage {
    static func with(url: URL?) -> UIImage? {
        guard let url = url,
            let imageData = try? Data(contentsOf: url) else {
            return nil
        }
        return UIImage(data: imageData)
    }
}
