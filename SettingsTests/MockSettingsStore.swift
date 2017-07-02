//
//  MockSettingsStore.swift
//  Settings
//
//  Created by Ron Lisle on 7/2/17.
//  Copyright © 2017 Ron Lisle. All rights reserved.
//

import UIKit
import Settings

class MockSettingsStore: SettingsStore
{
    public var key: String?
    public var bool: Bool?
    public var intValue: Int?
    public var string: String?
    
    func getBool(forKey: String) -> Bool?
    {
        key = forKey
        
        return bool
    }
    
    
    func set(_ bool: Bool?, forKey: String)
    {
        key = forKey
        self.bool = bool
    }
    
    
    func getInt(forKey: String) -> Int?
    {
        key = forKey
        
        return intValue
    }
    
    
    func set(_ intValue: Int?, forKey: String)
    {
        key = forKey
        self.intValue = intValue
    }
    
    
    func getString(forKey: String) -> String?
    {
        return string
    }
    
    
    func set(_ string: String?, forKey: String)
    {
        key = forKey
        self.string = string
    }
}
