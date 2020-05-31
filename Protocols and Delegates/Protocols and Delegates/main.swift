//
//  main.swift
//  Protocols and Delegates
//
//  Created by Jacob Hallman on 2020-05-31.
//  Copyright © 2020 Jacob Hallman. All rights reserved.
//

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assesSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        // Pick up the pager by setting this struct as delegate
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic performs CPR")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        // Pick up the pager by setting this struct as delegate
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic performs CPR")
    }
    
    func useStethescope() {
        print("Listen for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sing while performing CPR")
    }
    
    func electricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let jacob = Surgeon(handler: emilio)
let pete = Paramedic(handler: emilio)

emilio.assesSituation()
emilio.medicalEmergency()

