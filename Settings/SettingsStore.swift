//
//  SettingsStore.swift
//  Settings
//
//  This protocol defines a SettingsStore used by
//  the Settings class.
//
//  Created by Ron Lisle on 7/1/17.
//  Copyright © 2017 Ron Lisle. All rights reserved.
//

import Foundation

public protocol SettingsStore
{
    func getBool(forKey: String) -> Bool?
    func set(_ bool: Bool?, forKey: String)
    func getInt(forKey: String) -> Int?
    func set(_ int: Int?, forKey: String)
    func getString(forKey: String) -> String?
    func set(_ string: String?, forKey: String)
}
