//
//  PropertyExtensions.swift
//  PropertyExtensions
//
//  Created by Bradley Hilton on 2/9/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import ObjectiveC.runtime

protocol PropertyExtensions : class {}

extension PropertyExtensions {
    
    func getProperty<T>(property: String) -> T? {
        return (objc_getAssociatedObject(self, property.associatedValueKey) as? AssociatedValue)?.value as? T
    }
    
    func getProperty<T>(property: String, initial: T) -> T {
        if let value: T = getProperty(property) {
            return value
        } else {
            setValue(initial, forProperty: property)
            return initial
        }
    }
    
    func setValue<T>(value: T?, forProperty property: String) {
        objc_setAssociatedObject(self, property.associatedValueKey, AssociatedValue(value: value), .OBJC_ASSOCIATION_RETAIN)
    }
    
}

extension String {
    
    private var associatedValueKey: UnsafePointer<Void> {
        return UnsafePointer<Void>(bitPattern: abs(hashValue))
    }
    
}

private class AssociatedValue {
    
    var value: Any? = nil
    
    init?(value: Any?) {
        guard value != nil else { return nil }
        self.value = value
    }
    
}