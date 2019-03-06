//
//  CoordinateItem.swift
//  FirChat
//
//  Created by Ilgar Ilyasov on 3/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import MessageKit

struct CoordinateItem: LocationItem {
    var location: CLLocation
    
    /// The size of the location item.
    var size: CGSize
}
