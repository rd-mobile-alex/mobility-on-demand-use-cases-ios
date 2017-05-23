//
//  VenueMapTileLayerTests.swift
//  OnDemandPassenger
//
//  Created by Killion, Connor on 5/2/17.
//  Copyright © 2017 HERE. All rights reserved.
//

import XCTest

class VenueMapTileLayerTests: XCTestCase {
  var vc: ViewController!
  
  override func setUp() {
    super.setUp()
    
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  // test edge case of 0 as input.
  func testQuadkeyGenerationZero() {
    let finalString: NSString = "00000"
    let testString = VenueMapTileLayerUtility.quadKeyFrom(x: 0, y: 0, zoomLevel: 5)
    XCTAssert(finalString as String == testString)
  }
  
}
