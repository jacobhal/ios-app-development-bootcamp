//
//  TimeInterval_Extensions.swift
//  EggTimer
//
//  Created by Jacob Hallman on 2020-05-23.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

extension TimeInterval{

    func stringFromTimeInterval() -> String {

        let time = NSInteger(self)

        let ms = Int((self.truncatingRemainder(dividingBy: 1)) * 10)
        let seconds = time % 60
        let minutes = (time / 60) % 60
        
//        let secondsFraction = seconds - Double(Int(seconds))

        return String(format: "%0.2d:%0.2d.%0.1d",minutes,seconds,ms)

    }
}
