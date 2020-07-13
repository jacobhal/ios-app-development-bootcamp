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

## Swift app development basics

### Xcode

#### Project
If you click your project you can select some settings for your project.

##### General
The General project page consists of some basic settings such as which devices and minimum versions your app will run on, if it has landscape mode or not etc.

##### Signing & Capabilities
In order to deploy an app to the App Store or run apps on your local device you need to make sure that it is properly signed by a Team (you just have to create one for yourself).

> If you have trouble with files that are unrecognized by Xcode (which can happen quite frequently), try to right click the files and "Add <file> to project"

#### Inspector Pane
When you click on something in your design, you will see the inspect pane on the right. 

* The attribute selector lets you select colors, background etc.
* The size inpsector adjusts the size and position (and constraints)

#### Document Outline
The document outline on the left is the outline of the design of the storyboard. It works similar to a layer in design tools such as Photoshop or Skitch. It is easier to select elements in the outline rather than in the storyboard itself.

#### Map of Xcode
![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/images/map-of-xcode.pdf "Xcode map")

### Adding an app icon

### Storyboards
Main.storyboard is where you will be designing most of your app. If you need multiple screens you will create more storyboards with segues to navigate between them. The big "+" sign is where you add components to your screen.

### Constraints

### Protocols
A protocol is sort of like an interface, allowing the

### Closures

### Extensions
You are able to extend types and classes in order to add functionality or build upon it after it has been created just like in any language. For example, you could create an extension for the Swift Double and add a method like this:  

![Image not found](https://github.com/jacobhal/ios-app-development-bootcamp/images/double-extension.png "Double extension example")

> You can also extend Protocols in order to provide a default implementation of certain methods

Extensions can also be really handy for organizing code. If we are adopting a lot of different protocols for a class, we can break them up into different extensions to make the code cleaner (see **Clima-iOS13**).

### The Apple delegate pattern

