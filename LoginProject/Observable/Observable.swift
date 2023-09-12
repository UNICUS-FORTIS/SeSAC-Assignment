//
//  Observable.swift
//  CustomViewPractice
//
//  Created by LOUIE MAC on 2023/09/13.
//

import Foundation


final class Observable<T> {
    
    private var listener: ((T) -> Void)?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ closure: @escaping (T) -> Void) {
        
        closure(value)
        listener = closure
    }
}
