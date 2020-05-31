//
//  main.swift
//  ProtocolsDemo
//
//  Created by Jacob Hallman on 2020-05-31.
//  Copyright © 2020 Jacob Hallman. All rights reserved.
//

protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("Lays eggs")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("Flaps wings and flies away")
    }
    
    func soar() {
        print("Glides through the air")
    }
    
}

class Penguin: Bird {
    
    func swim() {
        print("Swims")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct AirPlane: CanFly {
    func fly() {
        print("Starts engine and flies away")
    }
}

let myEagle = Eagle()

myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()

myPenguin.layEgg()
myPenguin.swim()
//myPenguin.fly() // Penguins cannot fly, this is where we need a protocol

let myAirPlane = AirPlane()

let myMuseum = FlyingMuseum()
//myMuseum.flyingDemo(flyingObject: myPenguin) // Should not work
myMuseum.flyingDemo(flyingObject: myAirPlane)
myMuseum.flyingDemo(flyingObject: myEagle)
