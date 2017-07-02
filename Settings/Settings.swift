//
//  Settings.swift
//  Patriot
//
//  This object implements a model for persisting user settings.
//  It is expectedd to be extended for each specific setting value
//  by apps using this framework.
//
//  A set of "frameworkTest<Type>" settings are provided as examples
//  and are used by the unit tests.
//
//  Specific settings are added by extending the Settings class 
//  to include:
//
//    1. An property with accessors
//    2. Unit tests for the new property get and set methods
//
//  Refer to the framework unit tests for examples of both.
//
//  Created by Ron Lisle on 6/7/17.
//  Copyright © 2017 Ron Lisle. All rights reserved.
//

import Foundation

public class Settings
{
    private let settingsStore: SettingsStore!
    
    public var store: SettingsStore
    {
        get {
            return self.settingsStore
        }
    }

    /**
     *  A store must be provided.
     *  The UserDefaultsSettingsStore is typically used,
     *  but you can implement and use your own concrete 
     *  implementation of the SettingsStore protocol.
     */
    public init(store: SettingsStore)
    {
        self.settingsStore = store
    }
}
