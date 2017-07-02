# Settings
A swift class to simplify persisting user settings.

## Installation
You can either install Settings using Cocoapods, or simply copy the framework to your project.

### Cocoapods
Cocoapods is the easiest way to include Settings in your project. 

If your project doesn't already use Cocoapods then you'll need to create a Podfile. You can do this by running:

```
pod init
```

If your project already has a Podfile, then add Settings to it:

```
target 'YourTarget' do
    pod "Settings", "~> 1.0"
end
```

### Include Settings as a Subproject
You can manually add Settings to your project by 
including the Settings.framework file as an embedded binary.

After downloading or building Settings from source:

* Drag Settings.framework to your project's Target -> General -> Embedded Binaries
* Add 'import Settings' to each file that needs to reference Settings.

### Including Settings Source
You can alternatively include Settings as a subproject within your project. This will allow you to modify the Settings source if desired. 

After downloading Settings, copy the project file to your app project.

* Drag the Settings project (.xcodeproj) to your project's Project Navigator.

