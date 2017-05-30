/*
 * Copyright (c) 2017 HERE Europe B.V.
 * All rights reserved.
 */

import XCTest

class VenueServiceTests: XCTestCase {
  var sharedVenueService: VenueService?
  
  override func setUp() {
    super.setUp()
    
    sharedVenueService = VenueService()
  }
  
  func testPlacesRequestTriggeredProperly() {
    
    let expect = expectation(description: "VenueService will receive a signature and store it once")
    
    sharedVenueService?.requestSignature(DispatchQueue.main) { (signedQueryString: String?) -> Void in
      XCTAssert(signedQueryString != nil)
      expect.fulfill()
    }
    
    waitForExpectations(timeout: 10) { error in
      print(error ?? "error message not available")
    }
  }
  
}
