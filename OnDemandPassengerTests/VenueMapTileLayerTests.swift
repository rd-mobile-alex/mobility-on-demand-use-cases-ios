/*
 * Copyright (c) 2017 HERE Europe B.V.
 * All rights reserved.
 */

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
    let finalString = "00000"
    let testString = VenueMapTileLayerUtility.quadKeyFrom(x: 0, y: 0, zoomLevel: 5)
    XCTAssert(finalString == testString)
  }
  
  // test regular use case.
  func testQuadkeyGenerationRegular() {
    let finalString = "10102323"
    let testString = VenueMapTileLayerUtility.quadKeyFrom(x: 0b10100101, y: 0b00001111, zoomLevel: 8)
    XCTAssert(finalString == testString)
  }
  
}
