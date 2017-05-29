//
// Created by Jefferson Jones on 5/28/17.
// Copyright (c) 2017 Jefferson Jones. All rights reserved.
//

import Foundation

protocol SampleMeasurement {
  
  var timestamp:   Date { get set }
  var salinity:    Float32 { get set }
  var pH:          Float32 { get set }
  var temperature: Float32 { get set }
  
}