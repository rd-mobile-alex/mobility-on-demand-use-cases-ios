/*
 * Copyright (c) 2017 HERE Europe B.V.
 * All rights reserved.
 */

import XCTest

class VenueServiceTests: XCTestCase {
  var vc: SearchViewController!
  
  override func setUp() {
    super.setUp()
    
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    vc = storyboard.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
  }
  
  func testPlacesRequestTriggeredProperly() {
    print(vc.accessibilityElements)
  }
}
