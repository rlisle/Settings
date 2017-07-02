//
//  SettingsTests.swift
//  SettingsTests
//
//  Created by Ron Lisle on 7/1/17.
//  Copyright © 2017 Ron Lisle. All rights reserved.
//

import XCTest
@testable import Settings


class SettingsTests: XCTestCase
{
    let testString = "abcd1234"
    
    var settings: Settings!
    var mockStore: MockSettingsStore!
    
    override func setUp()
    {
        super.setUp()
        
        mockStore = MockSettingsStore()
        settings = Settings(store: mockStore)
    }
    

    func testThat_settingsInstantiates()
    {
        XCTAssertNotNil(settings)
    }
    
    
    func testThat_storeInstantiates()
    {
        XCTAssertNotNil(settings.store)
    }
    
    
    func testIsAardvark_returnsFalseIfNotSet()
    {
        mockStore.bool = nil
        XCTAssertNotNil(settings.isTestAardvark)
        XCTAssertFalse(settings.isTestAardvark)
    }

    
    func testIsAardvark_returnsFalse()
    {
        mockStore.bool = false
        XCTAssertFalse(settings.isTestAardvark)
    }

    
    func testIsAardvark_returnsTrue()
    {
        mockStore.bool = true
        XCTAssertTrue(settings.isTestAardvark)
    }

    
    func testAardvarkInt_returnsCorrectValue()
    {
        let testValue = 0x55aa
        mockStore.intValue = testValue
        XCTAssertEqual(settings.TestAardvarkInt, testValue)
    }

    
    func testAardvarkString_returnsCorrectValue()
    {
        let testString = "testing 1,2,3..."
        mockStore.string = testString
        XCTAssertEqual(settings.TestAardvarkString, testString)
    }
}

// This is an example of how to define settings values
// Create an extension like this in your product code
extension Settings
{
    var isTestAardvark: Bool
    {
        get {
            if let value = store.getBool(forKey: "TestIsAardvarkKey")
            {
                return  value
            }
            // Return a default value
            return false
        }
        set {
            store.set(newValue, forKey: "TestIsAardvarkKey")
        }
    }
    
    
    var TestAardvarkInt: Int
    {
        get {
            if let value = store.getInt(forKey: "TestAardvarkIntKey")
            {
                return  value
            }
            // Return a default value
            return 0
        }
        set {
            store.set(newValue, forKey: "TestAardvarkIntKey")
        }
    }
    
    
    var TestAardvarkString: String
    {
        get {
            if let value = store.getString(forKey: "TestAardvarkStringKey")
            {
                return  value
            }
            // Return a default value
            return "Unknown"
        }
        set {
            store.set(newValue, forKey: "TestAardvarkStringKey")
        }
    }
}
