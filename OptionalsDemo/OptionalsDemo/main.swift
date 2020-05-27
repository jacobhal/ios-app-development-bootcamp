//
//  main.swift
//  OptionalsDemo
//
//  Created by Jacob Hallman on 2020-05-27.
//  Copyright © 2020 Jacob Hallman. All rights reserved.
//

import Foundation

let myOptional: String?

myOptional = "Jacob"

// 1. Force unwrap
let text: String = myOptional!

// 2. Nil check (don't use...)
if myOptional != nil {
    let text2: String = myOptional!
}

// 3. Optional binding
if let safeOptional = myOptional {
    let text3: String = safeOptional
}

// 4. Nil coalescing operator
let text4: String = myOptional ?? ""


// 5. Optional chaining
struct MyOptionalStruct {
    var prop = 1
}

let myOptionalStruct: MyOptionalStruct?

myOptionalStruct = nil

print(myOptionalStruct?.prop)



