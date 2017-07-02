//
//  UserDefaultsSettingsStoreTests.swift
//  Settings
//
//  Created by Ron Lisle on 7/1/17.
//  Copyright © 2017 Ron Lisle. All rights reserved.
//

import XCTest
@testable import Settings

class UserDefaultsSettingsStoreTests: XCTestCase
{
    var store: SettingsStore!
    let userDefaults = UserDefaults.standard
    
    override func setUp()
    {
        super.setUp()
        store = UserDefaultsSettingsStore()
    }
    
    func testGetBoolFalse()
    {
        let testBoolKey = "testBoolKey"
        let testValue = false
        userDefaults.set(testValue, forKey: testBoolKey)
        let result = store.getBool(forKey: testBoolKey)
        XCTAssertEqual(result, testValue)
    }
    
    
    func testGetBoolTrue()
    {
        let testBoolKey = "testBoolKey"
        let testValue = false
        userDefaults.set(testValue, forKey: testBoolKey)
        let result = store.getBool(forKey: testBoolKey)
        XCTAssertEqual(result, testValue)
    }
    
    
    func testGetInt()
    {
        let testIntKey = "testIntKey"
        let testValue = 0x55aa
        userDefaults.set(testValue, forKey: testIntKey)
        let result = store.getInt(forKey: testIntKey)
        XCTAssertEqual(result, testValue)
    }
    
    
    func testGetString()
    {
        let testStringKey = "testStringKey"
        let testValue = "abcd 1234"
        userDefaults.set(testValue, forKey: testStringKey)
        let result: String? = store.getString(forKey: testStringKey)
        XCTAssertNotNil(result)
        XCTAssertEqual(result!, testValue)
    }
}
