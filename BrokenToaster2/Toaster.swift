//
//  Toaster.swift
//  BrokenToaster2
//
//  Created by Emily Kolar on 12/19/16.
//  Copyright © 2016 Emily Kolar. All rights reserved.
//

import Foundation

class Toaster {
	
	let numberOfSlotsForToast: Int = 4
	var isBroken: Bool!
	
	init() {
		self.isBroken = false
	}
	
	func makeToast(numberOfToasts: Int) -> String {
		var toasty = ""
		
		var currentSlot: Int = 1
		
		for i in 0..<numberOfToasts {
			
			toasty = "Filling slot \(currentSlot) with toast \(i)"
			
			if i % numberOfSlotsForToast == 0 {
				
				toasty += "----> Trying to toast..."
				
				repeat {
					
					self.isBroken = randomlyBreakToaster()
				
					if self.isBroken == true {
						toasty += "\n[Toaster broke, trying to fix...]"
					}
					else {
						toasty += "\n[Toasting...]"
					}
					
				} while self.isBroken == true
			}
			
			currentSlot += 1
		}
		
		return toasty
		
	}
	
	func randomlyBreakToaster() -> Bool {
		
		let r = arc4random_uniform(3)
		
		if r % 2 == 0 {
			return true
		}
		
		return false
		
	}
	
}
