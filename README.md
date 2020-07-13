# Udemy Course: ios-app-development-bootcamp
A repository for all the code written for the Udemy course "iOS 13 &amp; Swift 5 - The Complete iOS App Development Bootcamp

Table of Contents
=================

   * [Udemy Course: ios-app-development-bootcamp](#udemy-course-ios-app-development-bootcamp)
      * [Swift app development basics](#swift-app-development-basics)
         * [Generating app icons and images of different sizes](#generating-app-icons-and-images-of-different-sizes)
         * [Constraints](#constraints)
         * [Protocols](#protocols)
         * [Closures](#closures)
         * [Extensions](#extensions)
         * [The Apple delegate pattern](#the-apple-delegate-pattern)

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

To add a connection you can hold down **Control (^)** and drag to where you want to create your variable.

> If you rename a variable in your code and forget to refactor it properly you will get an error like "this class is not key value coding-compliant...". When you drag and create outlets the storyboard creates code in the background. In order to remove the old connection you can right click the element in the storyboard and delete the connection. You can re-link it to your new variable by dragging from the variable to your storyboard.

> NOTE: The best way to refactor a variable linked to the storyboard is to Control+click or right-click the variable and choose Refactor --> Rename

### Auto Layout and responsive UIs

#### Size classes

#### Constraints

### Stack views

## Swift basics

### Constants vs variables
Constants are declared using the **let** keyword.  
Variables are declared using the **var** keyword.

### Protocols
A protocol is sort of like an interface, allowing a class to adopt a template for what functions it should have.

### Closures

### Extensions
You are able to extend types and classes in order to add functionality or build upon it after it has been created just like in any language. For example, you could create an extension for the Swift Double and add a method like this:  

![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/blob/master/images/double-extension.png "Double extension example")

> You can also extend Protocols in order to provide a default implementation of certain methods

Extensions can also be really handy for organizing code. If we are adopting a lot of different protocols for a class, we can break them up into different extensions to make the code cleaner (see project **Clima-iOS13**).

### MVC pattern

### Delegate pattern
Apple likes to use this pattern a lot.

## Project references
This section contains the various projects for this course and the key takeaways from each of them.

### I am Rich
Basic app design (app icons, images)

### I am Poor
Basic app design (app icons, images)

### Dicee
Randomization, button outlets

### AutoLayout
Autolayout (constraints, size classes)

### EggTimer
Timers

### Quizzler
MVC design pattern

### Destini
MVC design pattern

### BMI Calculator
UISliders, calculations

### Clima
Delegate pattern, Networking, JSON, APIs


