//
//  ImageMediaItem.swift
//  FirChat
//
//  Created by Ilgar Ilyasov on 3/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit
import MessageKit

struct ImageMediaItem: MediaItem {
    
    /// The url where the media is located.
    let url: URL?
    
    /// The image.
    let image: UIImage?
    
    /// A placeholder image for when the image is obtained asychronously.
    let placeholderImage: UIImage
    
    /// The size of the media item.
    let size: CGSize
}
