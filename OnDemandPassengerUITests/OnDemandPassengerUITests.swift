

//
//  OnDemandPassengerUITests.swift
//  OnDemandPassengerUITests
//
//  Created by Killion, Connor on 5/26/17.
//  Copyright © 2017 HERE. All rights reserved.
//

import XCTest

class OnDemandPassengerUITests: XCTestCase {
        
  override func setUp() {
      super.setUp()
      
      // Put setup code here. This method is called before the invocation of each test method in the class.
      
      // In UI tests it is usually best to stop immediately when a failure occurs.
      continueAfterFailure = false
      // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
      XCUIApplication().launch()

      // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
    
  override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
      super.tearDown()
  }
  
  func testSearchViewControllerPlacesRequestProperlyTriggered() {
    let app = XCUIApplication()
    app.buttons["From:"].tap()
    app.tables["Empty list"].searchFields["Search"].tap()
    app.searchFields["Search"].typeText("2425 Warring St")
    app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
  }
  
  func testSearchViewControllerViewIsUpdatedProperly() {
    
    let app = XCUIApplication()
    app.buttons["From:"].tap()
    
    let emptyListTable = app.tables["Empty list"]
    emptyListTable.tap()
    emptyListTable.searchFields["Search"].tap()
    app.searchFields["Search"].typeText("2425 Warring St")
    app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
  }
    
}
