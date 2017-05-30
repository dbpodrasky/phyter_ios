//
// Created by Jefferson Jones on 5/29/17.
// Copyright (c) 2017 Jefferson Jones. All rights reserved.
//

import Foundation
import RxSwift

struct MeasurementLiveQuery {
  let results:       [SampleMeasurement]
  let insertions:    [Int]
  let deletions:     [Int]
  let modifications: [Int]
}

protocol MeasurementRepository {
  
  func createMeasurement(instrumentId: UUID, salinity: Float32, pH: Float32, temp: Float32) -> SampleMeasurement
  func measurements(forInstrumentId id: UUID) -> Observable<MeasurementLiveQuery>
  
}
