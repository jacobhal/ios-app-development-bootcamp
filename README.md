# Udemy Course: ios-app-development-bootcamp
A repository for all the code written for the Udemy course "iOS 13 &amp; Swift 5 - The Complete iOS App Development Bootcamp

Table of Contents
=================

   * [Udemy Course: ios-app-development-bootcamp](#udemy-course-ios-app-development-bootcamp)
   * [Table of Contents](#table-of-contents)
      * [Xcode](#xcode)
         * [Project](#project)
            * [General](#general)
            * [Signing &amp; Capabilities](#signing--capabilities)
         * [Inspector Pane](#inspector-pane)
         * [Document Outline](#document-outline)
         * [Map of Xcode](#map-of-xcode)
         * [Adding image assets](#adding-image-assets)
         * [Adding an app icon](#adding-an-app-icon)
         * [Storyboards](#storyboards)
      * [Basic design in Xcode](#basic-design-in-xcode)
         * [Modify how an image renders](#modify-how-an-image-renders)
         * [Linking design to code](#linking-design-to-code)
         * [Auto Layout and responsive UIs](#auto-layout-and-responsive-uis)
            * [Size classes](#size-classes)
            * [Constraints](#constraints)
               * [Safe area](#safe-area)
               * [Alignment](#alignment)
               * [Combining alignment and constraints](#combining-alignment-and-constraints)
         * [Stack views](#stack-views)
         * [Segues and Navigation for Multi-Screen Apps](#segues-and-navigation-for-multi-screen-apps)
            * [Create a new controller for a screen](#create-a-new-controller-for-a-screen)
            * [Segues](#segues)
      * [Swift basics](#swift-basics)
         * [Constants vs variables](#constants-vs-variables)
         * [Dictionaries](#dictionaries)
         * [Protocols](#protocols)
         * [Structs vs Classes](#structs-vs-classes)
         * [Optional binding, chaining and the Nil coalescing operator](#optional-binding-chaining-and-the-nil-coalescing-operator)
         * [Closures](#closures)
         * [Extensions](#extensions)
         * [MVC pattern](#mvc-pattern)
         * [Delegate pattern](#delegate-pattern)
      * [SwiftUI](#swiftui)
      * [Project references](#project-references)
         * [I am Rich](#i-am-rich)
         * [I am Poor](#i-am-poor)
         * [Dicee](#dicee)
         * [Xylophone](#xylophone)
         * [AutoLayout](#autolayout)
         * [EggTimer](#eggtimer)
         * [Quizzler](#quizzler)
         * [Destini](#destini)
         * [BMI Calculator](#bmi-calculator)
         * [Clima](#clima)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc)

## Xcode

### Project
If you click your project you can select some settings for your project.

#### General
The General project page consists of some basic settings such as which devices and minimum versions your app will run on, if it has landscape mode or not etc.

#### Signing & Capabilities
In order to deploy an app to the App Store or run apps on your local device you need to make sure that it is properly signed by a Team (you just have to create one for yourself).

> If you have trouble with files that are unrecognized by Xcode (which can happen quite frequently), try to right click the files and "Add <file> to project"

### Inspector Pane
When you click on something in your design, you will see the inspect pane on the right. 

* The attribute selector lets you select colors, background etc.
* The size inpsector adjusts the size and position (and constraints)

### Document Outline
The document outline on the left is the outline of the design of the storyboard. It works similar to a layer in design tools such as Photoshop or Sketch (which I use). It is easier to select elements in the outline rather than in the storyboard itself.

### Map of Xcode
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/map-of-xcode.png "Xcode map")

### Adding image assets
Add assets such as images to Assets.xcassets by dragging them into your outline. In order to make the images look good on different screen sizes you need to provide 3 versions (1x, 2x, 3x). These represent different versions of the same image and allows Apple to increase the screen resolution of newer Iphones/Ipads etc. After adding images to your assets you can select them by changing the "Image" property of a UIImageView.

The process of creating these images is typically to have the version with the best resolution as a starting point and generate less sharp versions: 300px\*300px --> 200px\*200px --> 100px\*100px.

> In order to create these different versions you can either use Sketch which allows to you export these different sizes of images or go to https://appicon.co.

### Adding an app icon
Add the various sizes of AppIcons in Assets.xcassets. You can use https://appicon.co just like before in order to provide different sizes of the App Icon. In order to make a quick design of an App Icon you can head over to https://canva.com.

### Storyboards
Main.storyboard is where you will be designing most of your app. If you need multiple screens you will create more storyboards with segues to navigate between them. The big "+" sign is where you add components to your screen.

## Basic design in Xcode

### Modify how an image renders
Let's say you have an image that you want to use as a background but it does not cover the entire screen, what do you do? You have to change the Content Mode in the Image View!  

We have mainly three options to choose from:  
* Scale to fill (scale the image up and down until it fills the entire area)
* Aspect fill (keeps the aspect ratio of the image while scaling it to fit the entire image view)
* Aspect fit (keep the aspect ratio and make sure the entire image is visible)

### Linking design to code
In order to link an element in your design to your code you should first open the Assistant Editor when you have your storyboard file chosen. Do so by clicking the horizontal lines in the top-right corner of the storyboard and select Assistant Editor.  

> To add a connection you can hold down **Control (^)** and drag to where you want to create your variable.

If you rename a variable in your code and forget to refactor it properly you will get an error like "this class is not key value coding-compliant...". When you drag and create outlets the storyboard creates code in the background. 

In order to remove the old connection you can right click the element in the storyboard and delete the connection. You can re-link it to your new variable by dragging from the variable to your storyboard.

> NOTE: The best way to refactor a variable linked to the storyboard is to Control+click or right-click the variable and choose Refactor --> Rename

### Auto Layout and responsive UIs
In order to make you design stay the same across devices we need auto layout. We need to set constraints for elements to the borders of the screen and each other, so they stay the same no matter if you have an iPhone 6s (6, 7, 8 have the same size) or an iPhone 11 etc.

#### Size classes
Size classes is what device Xcode currently uses to render your storyboard. Each size class represents a group of devices that have the same screen size. To change size class to another iOS device, click the menu below the storyboard and choose a different device to "View as".

#### Constraints
Constraints are a set of rules for your image view. Add constraints by clicking the constraints icon and modifying the values to what you want. You can use the dropdowns to choose which elements you want to relate the constraint to.

**Add constraints by clicking this small icon and then making sure the lines are red**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/constraints.png "Constraints")

We can then inspect the constraints by choosing a specific constraint in the outline and see the relation and relationship of the constraint on the right.

**Inspect contraint relation**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/constraints-relation.png "Constraints relation")

##### Safe area
The safe area is a small area that incorporates some padding on the sides and the top/bottom of the screen. The top safe area typically contains things like battery information, signal information and the bottom safe area contains the home button (at least on the iPhone XR). 

> If we are creating an app that has buttons on it, then we don't want it to be in the safe areas which is why we add constraints in relation to the safe area.

> If our view does not have buttons on it, such as the launchscreen storyboard typically, then we want to set the constraints to the Superview instead (the View at the base of our View Controller).

##### Alignment
Alignment is a way to align elements to commonly used loc ations, such as center, bottom, right or left.
Constraints will not work well in this case because of how it will look in landscape mode.
We can use alignment by clicking the alignment icon and adding alignment constraints.

**Adding alignment constraints**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/alignment-constraints.png "Alignment")

> The phone works out the size of the screen it is being rendered on and places the elements where we want to by looking at our alignment constraints.

##### Combining alignment and constraints
By combining alignment and constraints, we can say thing like "our button should be horizontally contered and always 30pt from the bottom of the safe area".

### Stack views
Use a stack view to place items along a column, either horizontally or vertically.

**Creating a stack view**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/stack-view.png "Stack view creation example")

### Segues and Navigation for Multi-Screen Apps
#### Create a new controller for a screen
Here is how to create a new Controller and connect it to a screen.
1. Add new file (Cocoa Touch Class)
2. Choose the View Controller in the storyboard (either in the outline or in the top of the screen)
3. Go to the identity inspector and change the Class to the class you created in step 1.

> The connection might be a bit slow in Xcode after creating the link

#### Segues
Segues allow you to go between different screens.  
Hold down Control (^) and drag from the first ViewController to the second. You can choose different animated ways to transition to the next screen (modally, detail etc.).  
Remember to add an Identifier in the Identity inspector so we can identify the Segue in our code.

In the prepare() method of the first ViewController you can check the if the identity of the segue is the one you want and relay it to the correct screen by setting `segue.destination = NewViewController!`.

When the user is passed to a new screen in iOS, then the screen is just placed on top of the last one. You can use a feature to see this when your App is running:

**Screen visualization**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/screen-visualization.png "Visualization example")

> We can go back to the previous screen by using the self.dismiss() method

> See **BMI-Calculator** for a full implemenation of multiple screens and segues.


## Swift basics

### Constants vs variables
Constants are declared using the **let** keyword.  
Variables are declared using the **var** keyword.

### Dictionaries
A dictionary is exactly like a dictionary in Python, or a hashmap in other programming languages.

**How to create a dictionary**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/dictionary.png "Dictionary example")

### Protocols
A protocol is sort of like an interface, allowing a class to adopt a template for what functions it should have.

### Structs vs Classes
**Structs**
* Structs do NOT have inheritance, but classes do
* Structs are immutable, which means that every change you make to the struct involes destroying the old copy and creating a new one.
* Structs are passed by value

**Classes**
* Classes are passed by reference, meaning we can have multiple instances which points to the same object
* Classes have to ability to inherit from other classes

### Optional binding, chaining and the Nil coalescing operator
An optional is a variable that might have a variable or it might not.  
There are different ways to handle such values.

**Force unwrapping**
By adding an exclamation mark we are force unwrapping the value, which means we trust it to be there and if it isn't an exception will be thrown.
```Swift
optional!
```

**Check for a nil value**
```Swift
{
  if optional != nil {
      optional!
  }
}
```

**Optional binding**
Bind the value of the optional if it is not nil.
```Swift
{
  if let safeOptional = optional {
      safeOptional
  }
}
```

**Nil coalescing operator**
```Swift
{
  optional ?? defaultValue
}
```

**Optional chaining**
Access properties for an optional by using optional chaining. If the optional is not nil, access the property.
```Swift
{
  let myOptional: MyOptional?
  myOptional = nil
  myOptional?.property
}
```

### Closures
Closures are anonymous functions, similar to lambda functions.

### Extensions
You are able to extend types and classes in order to add functionality or build upon it after it has been created just like in any language. For example, you could create an extension for the Swift Double and add a method like this:  

![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/double-extension.png "Double extension example")

> You can also extend Protocols in order to provide a default implementation of certain methods

Extensions can also be really handy for organizing code. If we are adopting a lot of different protocols for a class, we can break them up into different extensions to make the code cleaner (see project **Clima**).

### MVC pattern
The MVC (Model-View-Controller) patterns is very common for structuring anything from native apps to web projects. This is one of the most fundamental patterns that Apple themselves choose to use. In Xcode, you can create something called groups which will group your files together in the project tree beneath a folder which we can use to create our Model, View and Controller folders. Just right-click the files you want to add to a group and choose *New group from selection*.

We split our project in Models, Views and Controllers. 
* M = Model = Data & Logic
* V = View = User interface
* C = Controller = Mediator

**MVC diagram**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/MVC-example.png "MVC example")

**Popular design patterns**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/design-patterns.png "Design patterns")

> A design pattern is an architectural blueprint and you might choose different ones depending on the requirements

### Delegate pattern
Apple likes to use this pattern a lot.

**Delegate pattern example**
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/delegate-pattern.png "Delegate pattern example")

* In the WeatherViewController we have a reference to a UITextField.  
* We then set the delegate property to the WeatherViewController, which means that whenever the UITextField calls its delegate method textFieldDidBeginEditing(), the WeatherViewController will be notified.  
* The reason we can do this is because the WeatherViewController adopts the UITextFieldDelegate protocol.

Now we are able to switch out the WeatherViewController for any other class and it will still work!

> See the **Clima** project for an implementation of this protocol.

## SwiftUI
TODO

## Project references
This section contains the various projects for this course and the key takeaways from each of them.

### I am Rich
Basic app design (app icons, images)

### I am Poor
Basic app design (app icons, images)

### Dicee
Randomization, button outlets

### Xylophone
Playing sounds with AVAudioPlayer

### AutoLayout
Autolayout (constraints, size classes)

### EggTimer
Timers, AVAudioPlayer

### Quizzler
MVC design pattern

### Destini
MVC design pattern

### BMI Calculator
UISliders, calculations, segues and multi-screen apps, color literals

### Clima
Delegate pattern, Networking, JSON, APIs


