//
//  SomeObservable.swift
//  someframework
//
//  Created by Freeman on 23/1/17.
//  Copyright © 2017 Ladbrokes. All rights reserved.
//

import Foundation
import RxSwift

public class SomeObservable {
    static public let obs: Observable<String> = Observable<Int>
        .interval(1, scheduler: MainScheduler.instance).map { "\($0)" }
}
