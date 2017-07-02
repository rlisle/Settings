//
//  UserDefaultsSettingsStore.swift
//  Settings
//
// This class implementation a SettingsStore using NSUserDefaults.
//
//  Created by Ron Lisle on 7/1/17.
//  Copyright © 2017 Ron Lisle. All rights reserved.
//

import Foundation

public class UserDefaultsSettingsStore: SettingsStore
{
    public func getBool(forKey key: String) -> Bool?
    {
        return UserDefaults.standard.bool(forKey: key)
    }
    
    
    public func set(_ bool: Bool?, forKey key: String)
    {
        UserDefaults.standard.set(bool, forKey: key)
    }
    
    
    public func getInt(forKey key: String) -> Int?
    {
        return UserDefaults.standard.integer(forKey: key)
    }
    
    
    public func set(_ int: Int?, forKey key: String)
    {
        UserDefaults.standard.set(int, forKey: key)
    }
    
    
    public func getString(forKey key: String) -> String?
    {
        return UserDefaults.standard.string(forKey: key)
    }
    
    
    public func set(_ string: String?, forKey key: String)
    {
        UserDefaults.standard.set(string, forKey: key)
    }
}
